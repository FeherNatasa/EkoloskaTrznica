package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Cena {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private double cena;
    private LocalDate datumVeljavnosti;

    public Cena(double cena, LocalDate datumVeljavnosti) {
        this.cena = cena;
        this.datumVeljavnosti = datumVeljavnosti;
    }

    public double getCena() {
        return cena;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    public LocalDate getDatumVeljavnosti() {
        return datumVeljavnosti;
    }

    public void setDatumVeljavnosti(LocalDate datumVeljavnosti) {
        this.datumVeljavnosti = datumVeljavnosti;
    }

    @Override
    public String toString() {
        return "Cena{" +
                "id=" + id +
                ", cena=" + cena +
                ", datumVeljavnosti=" + datumVeljavnosti +
                '}';
    }
}
