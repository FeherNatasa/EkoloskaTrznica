package si.feri.eko.baza;




public class Kmetija {

  private int idKmetija;

    private String naziv;
    private String opis;
    private String email;
    private String telefonskaStevilka;
    private String prevzem;
  
  
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
        this.id=idKmetija;
        this.naziv = naziv;

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
    public int getidKmetijaa() { return idKmetija; }

        public void setidKmetija(int id_kmetija) { this.idKmetija = id_kmetija; }

    @Override
    public String toString() {
        return "Kmetija{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                ", opis='" + opis + '\'' +
                ", email='" + email + '\'' +
                ", telefonskaStevilka='" + telefonskaStevilka + '\'' +
                ", prevzem='" + prevzem + '\'' +
                '}';
    }
}
