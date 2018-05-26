package si.feri.eko.baza;




public class Kmetija {

    private int id;

    private String naziv;
    private String opis;
    private String email;
    private String telefonskaStevilka;

    public Kmetija(String naziv, String opis, String email, String telefonskaStevilka) {
        this.naziv = naziv;
        this.opis = opis;
        this.email = email;
        this.telefonskaStevilka = telefonskaStevilka;
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

    @Override
    public String toString() {
        return "Kmetija{" +
                "id=" + id +
                ", naziv='" + naziv + '\'' +
                ", opis='" + opis + '\'' +
                ", email='" + email + '\'' +
                ", telefonskaStevilka='" + telefonskaStevilka + '\'' +
                '}';
    }
}
