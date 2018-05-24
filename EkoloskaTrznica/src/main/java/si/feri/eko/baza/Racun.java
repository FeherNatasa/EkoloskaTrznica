package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Racun {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private String stevilkaRacuna;
    private LocalDate datumVeljavnosti;

    public Racun(String stevilkaRacuna, LocalDate datumVeljavnosti) {
        this.stevilkaRacuna = stevilkaRacuna;
        this.datumVeljavnosti = datumVeljavnosti;
    }

    public String getStevilkaRacuna() {
        return stevilkaRacuna;
    }

    public void setStevilkaRacuna(String stevilkaRacuna) {
        this.stevilkaRacuna = stevilkaRacuna;
    }

    public LocalDate getDatumVeljavnosti() {
        return datumVeljavnosti;
    }

    public void setDatumVeljavnosti(LocalDate datumVeljavnosti) {
        this.datumVeljavnosti = datumVeljavnosti;
    }

    @Override
    public String toString() {
        return "Racun{" +
                "id=" + id +
                ", stevilkaRacuna='" + stevilkaRacuna + '\'' +
                ", datumVeljavnosti=" + datumVeljavnosti +
                '}';
    }
}
