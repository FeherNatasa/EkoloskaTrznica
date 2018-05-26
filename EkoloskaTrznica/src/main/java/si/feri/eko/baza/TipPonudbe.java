package si.feri.eko.baza;


public class TipPonudbe {

    private int id;

    private int kolicina;

    public TipPonudbe(int kolicina) {
        this.kolicina = kolicina;
    }

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }

    @Override
    public String toString() {
        return "TipPonudbe{" +
                "id=" + id +
                ", kolicina=" + kolicina +
                '}';
    }
}
