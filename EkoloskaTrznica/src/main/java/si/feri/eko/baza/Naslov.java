package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Naslov {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private String imeUlice;
    private String hisnaStevilka;

    public Naslov(String imeUlice, String hisnaStevilka) {
        this.imeUlice = imeUlice;
        this.hisnaStevilka = hisnaStevilka;
    }

    public String getImeUlice() {
        return imeUlice;
    }

    public void setImeUlice(String imeUlice) {
        this.imeUlice = imeUlice;
    }

    public String getHisnaStevilka() {
        return hisnaStevilka;
    }

    public void setHisnaStevilka(String hisnaStevilka) {
        this.hisnaStevilka = hisnaStevilka;
    }

    @Override
    public String toString() {
        return "Naslov{" +
                "id=" + id +
                ", imeUlice='" + imeUlice + '\'' +
                ", hisnaStevilka='" + hisnaStevilka + '\'' +
                '}';
    }
}
