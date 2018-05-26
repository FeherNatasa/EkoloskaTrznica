package si.feri.eko.baza;


public class Kraj {

    private int id;

    private String postnaStevilka;
    private String obcina;
    private String regija;

    public Kraj(String postnaStevilka, String obcina, String regija) {
        this.postnaStevilka = postnaStevilka;
        this.obcina = obcina;
        this.regija = regija;
    }

    public String getPostnaStevilka() {
        return postnaStevilka;
    }

    public void setPostnaStevilka(String postnaStevilka) {
        this.postnaStevilka = postnaStevilka;
    }

    public String getObcina() {
        return obcina;
    }

    public void setObcina(String obcina) {
        this.obcina = obcina;
    }

    public String getRegija() {
        return regija;
    }

    public void setRegija(String regija) {
        this.regija = regija;
    }

    @Override
    public String toString() {
        return "Kraj{" +
                "id=" + id +
                ", postnaStevilka='" + postnaStevilka + '\'' +
                ", obcina='" + obcina + '\'' +
                ", regija='" + regija + '\'' +
                '}';
    }
}
