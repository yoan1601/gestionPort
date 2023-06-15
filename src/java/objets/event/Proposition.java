/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.event;

import objets.infrastructure.Quai;

/**
 *
 * @author yoan
 */
public class Proposition {
    Prevision prevision;
    Quai quai;
    
    public Proposition() {}

    public Proposition(Prevision prevision, Quai quai) {
        setPrevision(prevision);
        setQuai(quai);
    }

    public Prevision getPrevision() {
        return prevision;
    }

    public void setPrevision(Prevision prevision) {
        this.prevision = prevision;
    }

    public Quai getQuai() {
        return quai;
    }

    public void setQuai(Quai quai) {
        this.quai = quai;
    }
    
    
}
