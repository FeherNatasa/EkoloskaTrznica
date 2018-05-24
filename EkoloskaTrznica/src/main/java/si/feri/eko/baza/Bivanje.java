package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bivanje {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private int steviloStrank;

    public Bivanje(int steviloStrank) {
        this.steviloStrank = steviloStrank;
    }

    public int getSteviloStrank() {
        return steviloStrank;
    }

    public void setSteviloStrank(int steviloStrank) {
        this.steviloStrank = steviloStrank;
    }

    @Override
    public String toString() {
        return "Bivanje{" +
                "id=" + id +
                ", steviloStrank=" + steviloStrank +
                '}';
    }
}
