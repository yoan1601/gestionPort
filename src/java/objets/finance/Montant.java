/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.finance;

/**
 *
 * @author yoan
 */
public class Montant {
    int idMontant = -1;
    double ariary = -1;
    double euro = -1;

    public Montant() {
    }
    
    public Montant(double ar, double e) {
        setAriary(ar);
        setEuro(e);
    }

    public int getIdMontant() {
        return idMontant;
    }

    public void setIdMontant(int idMontant) {
        this.idMontant = idMontant;
    }

    public double getAriary() {
        return ariary;
    }

    public void setAriary(double ariary) {
        this.ariary = ariary;
    }

    public double getEuro() {
        return euro;
    }

    public void setEuro(double euro) {
        this.euro = euro;
    }
    
    
}
