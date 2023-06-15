/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package objets.propriete;

/**
 *
 * @author yoan
 */
public class Origine {
    int idOrigine = -1;
    String description;
    
    public Origine() {}
    
    public Origine(int id, String d) {
        setIdOrigine(id);
        setDescription(d);
    }

    public int getIdOrigine() {
        return idOrigine;
    }

    public void setIdOrigine(int idOrigine) {
        this.idOrigine = idOrigine;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
