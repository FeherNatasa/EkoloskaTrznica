package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Izdelek{

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private String naziv;
    private double cena;

    public Izdelek(String naziv, double cena) {
        this.naziv = naziv;
        this.cena = cena;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public double getCena() {
        return cena;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    @Override
    public String toString() {
        return "Izdelek{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                ", cena='" + cena + '\'' +
                '}';
    }
}
