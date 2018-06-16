package si.feri.eko.baza;


public class Naslov {


    private int id;

    private String imeUlice;
    private String hisnaStevilka;

    private int tk_idKraj;

    public Naslov(String imeUlice, String hisnaStevilka, int tk_idKraj) {
        this.imeUlice = imeUlice;
        this.hisnaStevilka = hisnaStevilka;
        this.tk_idKraj = tk_idKraj;
    }

    public int getTk_idKraj() {
        return tk_idKraj;
    }

    public void setTk_idKraj(int tk_idKraj) {
        this.tk_idKraj = tk_idKraj;
    }

    public String getImeUlice() {
        return imeUlice;
    }

    public void setImeUlice(String imeUlice) {
        this.imeUlice = imeUlice;
    }

    public String getHisnaStevilka() {
        return hisnaStevilka;
    }

    public void setHisnaStevilka(String hisnaStevilka) {
        this.hisnaStevilka = hisnaStevilka;
    }

    @Override
    public String toString() {
        return "Naslov{" +
                "id=" + id +
                ", imeUlice='" + imeUlice + '\'' +
                ", hisnaStevilka='" + hisnaStevilka + '\'' +
                '}';
    }
}
