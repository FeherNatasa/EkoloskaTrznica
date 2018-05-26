package si.feri.eko.baza;


public class Kosarica {

    private int id;

    private int steviloArtiklov;

    public Kosarica(int steviloArtiklov) {
        this.steviloArtiklov = steviloArtiklov;
    }

    public int getSteviloArtiklov() {
        return steviloArtiklov;
    }

    public void setSteviloArtiklov(int steviloArtiklov) {
        this.steviloArtiklov = steviloArtiklov;
    }

    @Override
    public String toString() {
        return "Kosarica{" +
                "id=" + id +
                ", steviloArtiklov=" + steviloArtiklov +
                '}';
    }
}
