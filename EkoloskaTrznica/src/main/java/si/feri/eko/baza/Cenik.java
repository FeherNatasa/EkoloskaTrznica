package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Cenik {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private String ime;
    private LocalDate datumVeljavnosti;

    public Cenik(String ime, LocalDate datumVeljavnosti) {
        this.ime = ime;
        this.datumVeljavnosti = datumVeljavnosti;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public LocalDate getDatumVeljavnosti() {
        return datumVeljavnosti;
    }

    public void setDatumVeljavnosti(LocalDate datumVeljavnosti) {
        this.datumVeljavnosti = datumVeljavnosti;
    }

    @Override
    public String toString() {
        return "Cenik{" +
                "id=" + id +
                ", ime='" + ime + '\'' +
                ", datumVeljavnosti=" + datumVeljavnosti +
                '}';
    }
}
