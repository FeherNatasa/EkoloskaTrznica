package si.feri.eko.baza;


import org.springframework.beans.factory.annotation.Autowired;

public class Izdelek{


    private int idIzdelka;

    private String naziv;
    private double masa;
    private double cena;
    private int kolicina;


    private int tk_idKmetija;


    public Izdelek(int idIzdelka, String naziv, double masa, double cena, int kolicina, int tk_idKmetija) {
        this.idIzdelka=idIzdelka;
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.kolicina = kolicina;
        this.tk_idKmetija = tk_idKmetija;
    }

    @Autowired
    public Izdelek(){

    }
    @Autowired
    public Izdelek(String naziv){
        this.naziv=naziv;
    }


    public Izdelek(String naziv, double masa, double cena) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
    }

    public Izdelek(String naziv, double masa, double cena, int id) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.idIzdelka = idIzdelka;
    }

    @Autowired
    public Izdelek(int idIzdelka, String naziv, double masa, double cena, int tk_idKmetija) {
        this.idIzdelka=idIzdelka;
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.tk_idKmetija=tk_idKmetija;
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

    public int getTk_idKmetija() {
        return tk_idKmetija;
    }

    public void setTk_idKmetija(int tk_idKmetija) {
        this.tk_idKmetija = tk_idKmetija;
    }

    public int getIdIzdelka() {
        return idIzdelka;
    }

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }

    @Override
    public String toString() {
        return "Izdelek{" +
                "id=" + idIzdelka +
                ", naziv='" + naziv + '\'' +
                ", masa='" + masa + '\'' +
                ", cena='" + cena + '\'' +
                '}';
    }
}
