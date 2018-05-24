package si.feri.eko.baza;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Uporabnik {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    private String ime;
    private String priimek;
    private String email;
    private String uporabniskoIme;
    private String geslo;

    public Uporabnik(String ime, String priimek, String email, String uporabniskoIme, String geslo) {
        this.ime = ime;
        this.priimek = priimek;
        this.email = email;
        this.uporabniskoIme = uporabniskoIme;
        this.geslo = geslo;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPriimek() {
        return priimek;
    }

    public void setPriimek(String priimek) {
        this.priimek = priimek;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUporabniskoIme() {
        return uporabniskoIme;
    }

    public void setUporabniskoIme(String uporabniskoIme) {
        this.uporabniskoIme = uporabniskoIme;
    }

    public String getGeslo() {
        return geslo;
    }

    public void setGeslo(String geslo) {
        this.geslo = geslo;
    }

    @Override
    public String toString() {
        return "Uporabnik{" +
                "id=" + id +
                ", ime='" + ime + '\'' +
                ", priimek='" + priimek + '\'' +
                ", email='" + email + '\'' +
                ", uporabniskoIme='" + uporabniskoIme + '\'' +
                ", geslo='" + geslo + '\'' +
                '}';
    }
}
