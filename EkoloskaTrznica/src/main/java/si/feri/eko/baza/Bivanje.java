package si.feri.eko.baza;



public class Bivanje {

    private int id;

    private int steviloStrank;

    public Bivanje(int steviloStrank) {
        this.steviloStrank = steviloStrank;
    }

    public int getSteviloStrank() {
        return steviloStrank;
    }

    public void setSteviloStrank(int steviloStrank) {
        this.steviloStrank = steviloStrank;
    }

    @Override
    public String toString() {
        return "Bivanje{" +
                "id=" + id +
                ", steviloStrank=" + steviloStrank +
                '}';
    }
}
