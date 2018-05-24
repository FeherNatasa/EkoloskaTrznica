package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Kosarica {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private int steviloArtiklov;

    public Kosarica(int steviloArtiklov) {
        this.steviloArtiklov = steviloArtiklov;
    }

    public int getSteviloArtiklov() {
        return steviloArtiklov;
    }

    public void setSteviloArtiklov(int steviloArtiklov) {
        this.steviloArtiklov = steviloArtiklov;
    }

    @Override
    public String toString() {
        return "Kosarica{" +
                "id=" + id +
                ", steviloArtiklov=" + steviloArtiklov +
                '}';
    }
}
