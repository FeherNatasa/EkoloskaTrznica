package si.feri.eko.baza;


import java.time.LocalDate;


public class Cenik {

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
