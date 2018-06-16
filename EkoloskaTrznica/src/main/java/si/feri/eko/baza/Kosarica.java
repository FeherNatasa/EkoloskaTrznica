package si.feri.eko.baza;



public class Kosarica{


    private int id;

    private String naziv;
    private double masa;
    private double cena;
    private int kolicina;


    private boolean prodano;

    private int tk_idUporabnik;
    private int tk_idIzdelek;


    public Kosarica(int id, String naziv, double masa, double cena, int kolicina, boolean prodano, int tk_idUporabnik, int tk_idIzdelek) {
        this.id=id;
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.kolicina = kolicina;
        this.prodano = prodano;
        this.tk_idUporabnik = tk_idUporabnik;
        this.tk_idIzdelek = tk_idIzdelek;
    }

    public Kosarica(String naziv, double masa, double cena, int kolicina, boolean prodano, int tk_idUporabnik, int tk_idIzdelek) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.kolicina = kolicina;
        this.prodano = prodano;
        this.tk_idUporabnik = tk_idUporabnik;
        this.tk_idIzdelek = tk_idIzdelek;
    }

    public int getTk_idIzdelek() {
        return tk_idIzdelek;
    }

    public void setTk_idIzdelek(int tk_idIzdelek) {
        this.tk_idIzdelek = tk_idIzdelek;
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

    public int getId() {
        return id;
    }

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }

    public boolean isProdano() {
        return prodano;
    }

    public void setProdano(boolean prodano) {
        this.prodano = prodano;
    }

    public int getTk_idUporabnik() {
        return tk_idUporabnik;
    }

    public void setTk_idUporabnik(int tk_idUporabnik) {
        this.tk_idUporabnik = tk_idUporabnik;
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
