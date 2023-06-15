/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.event;

import java.sql.Connection;
import java.sql.Timestamp;
import java.util.ArrayList;
import objets.finance.Montant;
import objets.finance.Prestation;
import objets.infrastructure.Navire;
import objets.infrastructure.Quai;

/**
 *
 * @author yoan
 */
public class Prevision {

    int idEscale = -1;
    Navire navire;
    Timestamp entree;
    Timestamp sortie;
    Prestation[] prestations;
    
    public Proposition getProposition(Connection connection) throws Exception {
        Quai[] allQuaiAdequat = this.getNavire().getAllQuaisAdequats(connection);
        Quai[] allQuaiLibre = this.getAllQuaisLibre(allQuaiAdequat);
        Quai quaiPrevision;
        if (allQuaiLibre.length > 0) {
            quaiPrevision = getQuaiFit(allQuaiLibre);
        } else {
            quaiPrevision = getMinAttente(allQuaiAdequat);
            //ou bien 
            //quaiPrevision = getQuaiFit(allQuaiAdequat);
            this.decaler(quaiPrevision);
        }
        Escale previsionEscale = this.transformeToEscale();
        // io montant io efa setted ao amle previsionEscale
        Montant montantEscale = previsionEscale.getCoutTotal(quaiPrevision, connection);
        
        //previsionEscale.insert(Connection connection);
        
        Escale [] listeEscaleAvecNewEscale = quaiPrevision.insertNewEscaletoQuai(previsionEscale);
        quaiPrevision.setEscales(listeEscaleAvecNewEscale);
        
        Proposition proposition = new Proposition(this, quaiPrevision);
        
        return proposition;
    }

    void decaler(Quai quaiPrevision) {
        Timestamp newDebut = quaiPrevision.getLastEscale().getSortie();
        long newFinLong = newDebut.getTime() + this.getDuree();
        Timestamp newFin = new Timestamp(newFinLong);
        this.setEntree(newDebut);
        this.setSortie(newFin);
    }

    public long getDuree() {
        return this.getSortie().getTime() - this.getEntree().getTime();
    }

    Escale transformeToEscale() {
        Escale previsionEscale = new Escale();
        previsionEscale.setNavire(getNavire());
        previsionEscale.setEntree(getEntree());
        previsionEscale.setSortie(getSortie());
        previsionEscale.setPrestations(getPrestations());
        return previsionEscale;
    }

    public Quai getMinAttente(Quai[] lq) {
        Quai rep = lq[0];
        long minDuree = rep.getSommeDureeEscales();
        for (Quai quai : lq) {
            if (quai.getSommeDureeEscales() < minDuree) {
                rep = quai;
                minDuree = quai.getSommeDureeEscales() + quai.getSommeDureeInterEscales();
            }
        }
        return rep;
    }

    Quai getQuaiFit(Quai[] lq) {
        Quai rep = lq[0];
        double profNavire = this.getNavire().getProfondeur();
        double distMin = abs(rep.getProfondeur() - profNavire);
        for (Quai quai : lq) {
            if (abs(quai.getProfondeur() - profNavire) < distMin) {
                rep = quai;
                distMin = abs(rep.getProfondeur() - profNavire);
            }
        }
        return rep;
    }

    double abs(double d) {
        if (d < 0) {
            return -d;
        }
        return d;
    }

    public Quai[] getAllQuaisLibre(Quai[] allQuaiAdequat) {
        ArrayList<Quai> rep = new ArrayList<>();
        for (Quai quai : allQuaiAdequat) {
            if (quai.getEscales().length == 0) {
                rep.add(quai);
            } else {
                if (quai.getEscalesMifanitsaka(this).length == 0) {
                    rep.add(quai);
                }
            }
        }
        return (Quai[]) rep.toArray();
    }

    public Prestation[] getPrestations() {
        return prestations;
    }

    public void setPrestations(Prestation[] prestations) {
        this.prestations = prestations;
    }

    public int getIdPrevision() {
        return idEscale;
    }

    public void setIdPrevision(int idPrevision) {
        this.idEscale = idPrevision;
    }

    public int getIdEscale() {
        return idEscale;
    }

    public void setIdEscale(int idEscale) {
        this.idEscale = idEscale;
    }

    public Navire getNavire() {
        return navire;
    }

    public void setNavire(Navire navire) {
        this.navire = navire;
    }

    public Timestamp getEntree() {
        return entree;
    }

    public void setEntree(Timestamp entree) {
        this.entree = entree;
    }

    public Timestamp getSortie() {
        return sortie;
    }

    public void setSortie(Timestamp sortie) {
        this.sortie = sortie;
    }

}
