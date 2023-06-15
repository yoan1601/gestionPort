/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.infrastructure;

import java.sql.Connection;
import java.util.ArrayList;
import objets.propriete.Capacite;
import objets.propriete.Client;
import objets.propriete.Origine;
import objets.propriete.Type;

/**
 *
 * @author yoan
 */
public class Navire {
    int idNavire = -1;
    String identifiant;
    String description;
    double profondeur = -1;
    Client client;
    double dureeRemorquage = -1;
    Origine origine;
    Type type;
    
    public Quai [] getAllQuaisAdequats(Connection connection) throws Exception {
        ArrayList<Quai> rep = new ArrayList<>();
        Quai [] allQuais = Quai.getAllQuai(new connect.ConnectionDeliver().getConnection());
        for (Quai q : allQuais) {
            if(q.getProfondeur() >= this.getProfondeur()) rep.add(q);
        }
        if(rep.isEmpty()) throw  new Exception("aucun quai ne correspond au profondeur de votre navire "+this.getProfondeur()+" metres");
        return (Quai[]) rep.toArray();
    }
    
    public static Navire getSimulatedNavire() {
        String descr = "Royal Navy";
        Navire n = new Navire();
        double p = 12;
        Origine o = new Origine(1, "national");
        double dr = 15;
        Type t = new Type(1, "petrolier");
        n.setDescription(descr);
        n.setProfondeur(p);
        n.setOrigine(o);
        n.setDureeRemorquage(dr);
        n.setType(t);
        return n;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public int getIdNavire() {
        return idNavire;
    }

    public void setIdNavire(int idNavire) {
        this.idNavire = idNavire;
    }

    public String getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(String identifiant) {
        this.identifiant = identifiant;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getProfondeur() {
        return profondeur;
    }

    public void setProfondeur(double profondeur) {
        this.profondeur = profondeur;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public double getDureeRemorquage() {
        return dureeRemorquage;
    }

    public void setDureeRemorquage(double dureeRemorquage) {
        this.dureeRemorquage = dureeRemorquage;
    }

    public Origine getOrigine() {
        return origine;
    }

    public void setOrigine(Origine origine) {
        this.origine = origine;
    }
    
    
}
