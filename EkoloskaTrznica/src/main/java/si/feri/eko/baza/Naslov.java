package si.feri.eko.baza;


public class Naslov {


    private int id;

    private String imeUlice;
    private String hisnaStevilka;

    public Naslov(String imeUlice, String hisnaStevilka) {
        this.imeUlice = imeUlice;
        this.hisnaStevilka = hisnaStevilka;
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
