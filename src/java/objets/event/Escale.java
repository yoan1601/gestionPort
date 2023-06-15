/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.event;

import java.sql.Connection;
import objets.finance.Montant;
import objets.finance.Prestation;
import objets.infrastructure.Quai;

/**
 *
 * @author yoan
 */
public class Escale extends Prevision {
    
    Montant montant;
    
    public long getDureeMinute() {
        long minutes = getDuree() / (1000 * 60);
        return minutes;
    }
    
    public Montant getCoutTotal(Quai quai, Connection connection) throws Exception {
        double total_ariary = 0;
        double total_euro = 0;

        for (Prestation prestation : prestations) {
            montant = prestation.etablirMontant(getNavire(), quai, this, connection);
            total_ariary += montant.getAriary();
            total_euro += montant.getEuro();
        }
        
        setMontant(new Montant(total_ariary, total_euro));
        
        return getMontant();
    }

    public Montant getMontant() {
        return montant;
    }

    public void setMontant(Montant montant) {
        this.montant = montant;
    }
    
    
    
}
