/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.infrastructure;

import java.sql.Connection;
import java.util.ArrayList;
import objets.event.Escale;
import objets.event.Prevision;
import annot.TableAnnotation;
import annot.TsyMiditraAnnotation;
import crud.Select;
import dao.ObjetBdd;

/**
 *
 * @author yoan
 */
@TableAnnotation(nomTable = "quais")
public class Quai extends ObjetBdd {
    int idQuai = -1;
    String numero;
    String description;
    double profondeur = -1;
    @TsyMiditraAnnotation
    Escale[] escales;
    
    public Escale [] insertNewEscaletoQuai(Escale newEscale) {
        newEscale.setIdEscale(0);
        ArrayList<Escale> newOrdre = new ArrayList<>();
        for (int i = 0; i < getEscales().length - 1; i++) {
            Escale escale = getEscales()[i];
            newOrdre.add(escale);
            
            Escale escaleNext = getEscales()[i + 1];
            
            if(isInserable(newEscale, escale, escaleNext) == true) {
                newOrdre.add(newEscale);
            }
        }
        
        if(isNewEscaleInNewOrdre(newEscale, newOrdre) == false) {
            newOrdre.add(newEscale);
        }
        
        Escale [] newOrdreTab = (Escale[]) newOrdre.toArray();
        return newOrdreTab;
    }
    
    boolean isNewEscaleInNewOrdre(Escale newEscale, ArrayList<Escale> newOrdre) {
        for (int i = 0; i < newOrdre.size(); i++) {
            Escale get = newOrdre.get(i);
            if(get.getIdEscale() == 0) return true;
        }
        return false;
    }
    
    public boolean isInserable(Escale newEscale, Escale escale1, Escale escale2) {
        // si newEscale.entree >= escale1.sortie ET newEscale.sortie <= escale2.entree 
        if((newEscale.getEntree().after(escale1.getSortie()) || newEscale.getEntree().compareTo(escale1.getSortie()) == 0) && (newEscale.getSortie().before(escale2.getEntree()) || newEscale.getSortie().compareTo(escale2.getEntree()) == 0)) {
            return true;
        }
        return false;
    }
    
    public Escale getLastEscale() {
        return getEscales()[getEscales().length - 1];
    }
    
    public long getSommeDureeEscales() {
        long s = 0;
        for (Escale escale : escales) {
            s += escale.getDuree();
        }
        return s;
    }
    public long getSommeDureeInterEscales() {
        long s = 0;
        for (int i = 0; i < escales.length - 1; i++) {
            Escale escale = escales[i];
            Escale escaleSuivant = escales[i+1];
            long dureeInterEscale = escaleSuivant.getEntree().getTime() - escale.getSortie().getTime();
            s += dureeInterEscale;
        }
        return s;
    }
    
    
    public Escale[] getEscalesMifanitsaka(Prevision p) {
        ArrayList<Escale> rep = new ArrayList<>();
        for (Escale escale : escales) {
            if(escale.getSortie().after(p.getEntree()) == true && escale.getSortie().before(p.getSortie()) == true) rep.add(escale);
            else if(escale.getEntree().after(p.getEntree()) == true && escale.getEntree().before(p.getSortie()) == true) rep.add(escale);
        }
        return (Escale []) rep.toArray();
    }
    
    public static Quai[] getAllQuai(Connection connection) throws Exception {
        ArrayList<Quai> allQuais = new Quai().select(connection, true);
        return (Quai[]) allQuais.toArray();
    }
    
    public Quai(){}
    
    public Quai(String numero, String description, double p ,Escale[] escales) {
        this.numero = numero;
        this.description = description;
        this.profondeur = p;
        this.escales = escales;
    }

    public Quai(String numero, String description, Escale[] escales) {
        this.numero = numero;
        this.description = description;
        this.escales = escales;
    }

    public int getIdQuai() {
        return idQuai;
    }

    public void setIdQuai(int idQuai) {
        this.idQuai = idQuai;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
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

    public Escale[] getEscales() {
        return escales;
    }

    public void setEscales(Escale[] escales) {
        this.escales = escales;
    }
    
    
}
