
package si.feri.eko.baza;

public class Komentar {

    private int idKomentar;

    private String vsebina;

    private int tk_idKmetija;
    private int tk_idUporabnik;

    public Komentar(int idKomentar, String vsebina, int tk_idKmetija, int tk_idUporabnik) {
        this.idKomentar = idKomentar;
        this.vsebina = vsebina;
        this.tk_idKmetija = tk_idKmetija;
        this.tk_idUporabnik = tk_idUporabnik;
    }

    public Komentar(String vsebina, int tk_idKmetija, int tk_idUporabnik) {
        this.vsebina = vsebina;
        this.tk_idKmetija = tk_idKmetija;
        this.tk_idUporabnik = tk_idUporabnik;
    }

    public int getTk_idKmetija() {
        return tk_idKmetija;
    }

    public void setTk_idKmetija(int tk_idKmetija) {
        this.tk_idKmetija = tk_idKmetija;
    }

    public String getVsebina() {
        return vsebina;
    }

    public void setVsebina(String vsebina) {
        this.vsebina = vsebina;
    }

    @Override
    public String toString() {
        return "Komentar{" +
                "id=" + idKomentar +
                ", vsebina='" + vsebina + '\'' +
                '}';
    }
}

