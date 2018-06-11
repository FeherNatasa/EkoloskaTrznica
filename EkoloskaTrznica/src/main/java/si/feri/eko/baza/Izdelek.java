package si.feri.eko.baza;



public class Izdelek{


    private int idIzdelek;

    private String naziv;
    private double masa;
    private double cena;

    public Izdelek(String naziv, double masa, double cena) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
    }

    public Izdelek(String naziv, double masa, double cena, int idIzdelek) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.idIzdelek = idIzdelek;
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
    
    public int idIzdelek() {
        return idIzdelek;
    }

    public void setidIzdelek(int idIzdelek) {
        this.idIzdelek = idIzdelek;
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
