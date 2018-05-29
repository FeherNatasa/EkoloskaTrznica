package si.feri.eko.baza;



public class Izdelek{


    private int id;

    private String naziv;
    private double masa;
    private double cena;

    public Izdelek(String naziv, double masa, double cena) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public double getCena() {
        return cena;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    public double getMasa() {
        return masa;
    }

    public void setMasa(double masa) {
        this.masa = masa;
    }

    @Override
    public String toString() {
        return "Izdelek{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                ", masa='" + masa + '\'' +
                ", cena='" + cena + '\'' +
                '}';
    }
}
