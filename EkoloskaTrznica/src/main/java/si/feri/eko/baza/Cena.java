package si.feri.eko.baza;

import java.time.LocalDate;
public class Cena {

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
