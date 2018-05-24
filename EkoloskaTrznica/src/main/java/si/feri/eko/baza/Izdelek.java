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

    public Izdelek(String naziv) {
        this.naziv = naziv;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    @Override
    public String toString() {
        return "Izdelek{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                '}';
    }
}
