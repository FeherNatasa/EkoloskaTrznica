package si.feri.eko.baza;


public class Kraj {

    private int idKraj;

    private int postnaStevilka;
    private String obcina;
    private String regija;

    public Kraj(int idKraj, int postnaStevilka, String obcina, String regija) {
        this.idKraj=idKraj;
        this.postnaStevilka = postnaStevilka;
        this.obcina = obcina;
        this.regija = regija;
    }

    public Kraj (int postnaStevilka)
    {
        this.postnaStevilka=postnaStevilka;
    }
    public int getPostnaStevilka() {
        return postnaStevilka;
    }

    public void setPostnaStevilka(int postnaStevilka) {
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
                "id=" + idKraj +
                ", postnaStevilka='" + postnaStevilka + '\'' +
                ", obcina='" + obcina + '\'' +
                ", regija='" + regija + '\'' +
                '}';
    }
}
