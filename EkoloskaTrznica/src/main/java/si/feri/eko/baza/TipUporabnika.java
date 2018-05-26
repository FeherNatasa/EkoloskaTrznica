package si.feri.eko.baza;



public class TipUporabnika {

    private int id;

    private boolean kmetija;

    public TipUporabnika(boolean kmetija) {
        this.kmetija = kmetija;
    }

    public boolean isKmetija() {
        return kmetija;
    }

    public void setKmetija(boolean kmetija) {
        this.kmetija = kmetija;
    }

    @Override
    public String toString() {
        return "TipUporabnika{" +
                "id=" + id +
                ", kmetija=" + kmetija +
                '}';
    }
}
