package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TipPonudbe {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private int kolicina;

    public TipPonudbe(int kolicina) {
        this.kolicina = kolicina;
    }

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }

    @Override
    public String toString() {
        return "TipPonudbe{" +
                "id=" + id +
                ", kolicina=" + kolicina +
                '}';
    }
}
