package si.feri.eko.baza;


import org.springframework.beans.factory.annotation.Autowired;

public class Kmetija {

    private int idKmetija;

    private String naziv;
    private String opis;
    private String email;
    private String telefonskaStevilka;
    private String prevzem;

    private int tk_idKraj;
    private int tk_idUporabnik;

    public Kmetija(int idKmetija, String naziv, String email, String telefonskaStevilka, String prevzem, String opis, int tk_idKraj, int tk_idUporabnik) {
        this.idKmetija=idKmetija;
        this.naziv = naziv;
        this.opis = opis;
        this.email = email;
        this.telefonskaStevilka = telefonskaStevilka;
        this.prevzem = prevzem;
        this.tk_idKraj = tk_idKraj;
        this.tk_idUporabnik = tk_idUporabnik;
    }



    public Kmetija(String naziv){
        this.naziv=naziv;
    }

    public Kmetija(String naziv, String opis, String email, String telefonskaStevilka, String prevzem) {
        this.naziv = naziv;
        this.opis = opis;
        this.email = email;
        this.telefonskaStevilka = telefonskaStevilka;
        this.prevzem = prevzem;
    }
    public Kmetija(String naziv, String opis, String email, String telefonskaStevilka, String prevzem, int id_kmetija) {
        this.naziv = naziv;
        this.opis = opis;
        this.email = email;
        this.telefonskaStevilka = telefonskaStevilka;
        this.prevzem = prevzem;
        this.idKmetija = id_kmetija;
    }

    @Autowired
    public Kmetija(int idKmetija, String naziv) {
        this.idKmetija=idKmetija;
        this.naziv = naziv;

    }

    public int getIdKmetija() {
        return idKmetija;
    }

    public void setIdKmetija(int idKmetija) {
        this.idKmetija = idKmetija;
    }

    public int getTk_idKraj() {
        return tk_idKraj;
    }

    public void setTk_idKraj(int tk_idKraj) {
        this.tk_idKraj = tk_idKraj;
    }

    public int getTk_idUporabnik() {
        return tk_idUporabnik;
    }

    public void setTk_idUporabnik(int tk_idUporabnik) {
        this.tk_idUporabnik = tk_idUporabnik;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefonskaStevilka() {
        return telefonskaStevilka;
    }

    public void setTelefonskaStevilka(String telefonskaStevilka) {
        this.telefonskaStevilka = telefonskaStevilka;
    }

    public String getPrevzem() {
        return prevzem;
    }

    public void setPrevzem(String prevzem) {
        this.prevzem = prevzem;
    }

    @Override
    public String toString() {
        return "Kmetija{" +
                "idKmetija=" + idKmetija +
                ", naziv='" + naziv + '\'' +
                ", opis='" + opis + '\'' +
                ", email='" + email + '\'' +
                ", telefonskaStevilka='" + telefonskaStevilka + '\'' +
                ", prevzem='" + prevzem + '\'' +
                '}';
    }
}
