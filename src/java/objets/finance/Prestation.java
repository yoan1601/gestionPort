/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.finance;

import connect.Connect;
import fonctions.Utilitaire;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import objets.event.Escale;
import objets.infrastructure.Navire;
import objets.infrastructure.Quai;

/**
 *
 * @author yoan
 */
public class Prestation {

    int idPrestation = -1;
    String description;
    int isFixe = -1;
    Montant montant;
    double limitNonLineaire = -1;
    double tranche = -1;

    public Montant etablirMontant(Navire navire, Quai quai, Escale escale, Connection connection) throws Exception {
        Montant m = new Montant();
        // origine 1 international
        // origine 2 national
        switch (getIsFixe()) {
            //non fixe non lineaire -> stationnement
            case 0:
                m = getMontantNonFixeNonLineaire(navire, quai, escale, connection);
                break;
            //fixe
            case 1:
                m = getMontantFixe(connection);
                break;
            //non fixe lineaire -> remorquage    
            case 2:
                m = getMontantNonFixeLineaire(navire, quai, escale, connection);
            default:
                break;
        }
        setMontant(m);
        return getMontant();
    }

    public Montant getMontantNonFixeLineaire(Navire navire, Quai quai, Escale escale, Connection connection) throws Exception {
        Montant m = new Montant();
        double ariary = 0;
        double euro = 0;
        double duree = escale.getDureeMinute();
        if(this.getDescription().equalsIgnoreCase("Remorquage")) duree = navire.getDureeRemorquage();
        int coeff = ((int) (duree / getTranche())) + 1; //satria ra 0 le duree / getTranche() donc tranche 1 zay
        double coutTrancheAriary = getCoeffIncrementTarif(navire, quai, 2, connection);
        double coutTrancheEuro = getCoeffIncrementTarif(navire, quai, 1, connection);
        ariary = coeff * coutTrancheAriary;
        euro = coeff * coutTrancheEuro;
        m = new Montant(ariary, euro);
        return m;
    }

    public Montant getMontantNonFixeNonLineaire(Navire navire, Quai quai, Escale escale, Connection connection) throws Exception {
        Montant m = new Montant();
        double ariary = 0;
        double euro = 0;
        double dureeEscaleMinute = escale.getDureeMinute();
        if (dureeEscaleMinute < getLimitNonLineaire()) {
            ariary = getTarif(navire, quai, escale, 2, connection);
            euro = getTarif(navire, quai, escale, 1, connection);
            m = new Montant(ariary, euro);
        } else { //miotra anle tranches
            double citAriary = getCoeffIncrementTarif(navire, quai, 2, connection);
            double citEuro = getCoeffIncrementTarif(navire, quai, 1, connection);
            double diffDureeEscaleLimitNonLineaire = Utilitaire.abs(dureeEscaleMinute - getLimitNonLineaire());
            //ra tena egale amle limit
            if (diffDureeEscaleLimitNonLineaire == 0) {
                diffDureeEscaleLimitNonLineaire = 1;
            }
            ariary = citAriary * diffDureeEscaleLimitNonLineaire;
            euro = citEuro * diffDureeEscaleLimitNonLineaire;
            m = new Montant(ariary, euro);
        }
        return m;
    }

    public Montant getMontantFixe(Connection connection) throws Exception {
        boolean isOpened = false;

        try {
            if (connection == null) {

                isOpened = true;

                Connect connexion = new Connect();

                connection = connexion.getConnexionOracle();

            }

            Statement stat = connection.createStatement();

            try {

                String requete = "select * from prestations where idPrestation = " + this.getIdPrestation();

                //System.out.println(requete);
                ResultSet resultSet = stat.executeQuery(requete);

                if (resultSet == null) {
                    System.out.println("tsy ao anaty tranche le duree -> CITF");
                    return null;
                }

                resultSet.next();

                Montant m = new Montant();
                m.setAriary(resultSet.getDouble("ariary"));
                m.setEuro(resultSet.getDouble("euro"));
                return m;

            } catch (SQLException e) {

                connection.rollback();

                System.out.println("La recuperation du montant fixe a echoue");

                System.out.println(e.getMessage());
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            if (isOpened == true) {
                connection.close();
            }
        }
        return null;
    }

    public double getCoeffIncrementTarif(Navire navire, Quai quai, Integer idOrigine, Connection connection) throws Exception {
        if (idOrigine == null) {
            idOrigine = navire.getOrigine().getIdOrigine();
        }

        boolean isOpened = false;

        try {
            if (connection == null) {

                isOpened = true;

                Connect connexion = new Connect();

                connection = connexion.getConnexionOracle();

            }

            Statement stat = connection.createStatement();

            try {

                String requete = "select * from citf where idPrestation = " + this.getIdPrestation() + " and idOrigine = " + idOrigine + " and idType = " + navire.getType().getIdType() + " and idQuai = " + quai.getIdQuai();

                //System.out.println(requete);
                ResultSet resultSet = stat.executeQuery(requete);

                if (resultSet == null) {
                    throw new Exception("pas de CITF");
                }

                resultSet.next();

                return resultSet.getDouble("coefftarif");

            } catch (SQLException e) {

                connection.rollback();

                System.out.println("La recuperation du CITF a echoue");

                System.out.println(e.getMessage());
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            if (isOpened == true) {
                connection.close();
            }
        }
        return 0;
    }

    public double getTarif(Navire navire, Quai quai, Escale escale, Integer idOrigine, Connection connection) throws Exception {

        if (idOrigine == null) {
            idOrigine = navire.getOrigine().getIdOrigine();
        }

        boolean isOpened = false;

        try {
            if (connection == null) {

                isOpened = true;

                Connect connexion = new Connect();

                connection = connexion.getConnexionOracle();

            }

            Statement stat = connection.createStatement();

            try {

                String requete = "select * from tarifs where idPrestation = " + this.getIdPrestation() + " and idOrigine = " + idOrigine + " and idType = " + navire.getType().getIdType() + " and idQuai = " + quai.getIdQuai() + " and (debutTranche <= " + escale.getDureeMinute() + " and finTranche > " + escale.getDureeMinute() + ")";

                //System.out.println(requete);
                ResultSet resultSet = stat.executeQuery(requete);

                if (resultSet == null) {
                    System.out.println("tsy ao anaty tranche le duree -> CITF");
                    return -1;
                }

                resultSet.next();

                return resultSet.getDouble("tarif");

            } catch (SQLException e) {

                connection.rollback();

                System.out.println("La recuperation du tarif a echoue");

                System.out.println(e.getMessage());
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            if (isOpened == true) {
                connection.close();
            }
        }
        return -1;
    }

    public double getLimitNonLineaire() {
        return limitNonLineaire;
    }

    public void setLimitNonLineaire(double limitNonLineaire) {
        this.limitNonLineaire = limitNonLineaire;
    }

    public double getTranche() {
        return tranche;
    }

    public void setTranche(double tranche) {
        this.tranche = tranche;
    }

    public int getIsFixe() {
        return isFixe;
    }

    public void setIsFixe(int isFixe) {
        this.isFixe = isFixe;
    }

    public int getIdPrestation() {
        return idPrestation;
    }

    public void setIdPrestation(int idPrestation) {
        this.idPrestation = idPrestation;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Montant getMontant() {
        return montant;
    }

    public void setMontant(Montant montant) {
        this.montant = montant;
    }

}
