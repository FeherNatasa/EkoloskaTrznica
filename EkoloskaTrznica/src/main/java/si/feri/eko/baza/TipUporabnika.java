package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TipUporabnika {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private boolean kmetija;

    public TipUporabnika(boolean kmetija) {
        this.kmetija = kmetija;
    }

    public boolean isKmetija() {
        return kmetija;
    }

    public void setKmetija(boolean kmetija) {
        this.kmetija = kmetija;
    }

    @Override
    public String toString() {
        return "TipUporabnika{" +
                "id=" + id +
                ", kmetija=" + kmetija +
                '}';
    }
}
