
package si.feri.eko.baza;

public class Ocena {

    private int idOcena;

    private int kmetija_ocena;

    public Ocena(int kmetija_ocena)
    {
        this.kmetija_ocena = kmetija_ocena;
    }

    public int getKmetija_ocena(){
        return kmetija_ocena;
    }

    public void setKmetija_ocena(int kmetija_ocena){
        this.kmetija_ocena = kmetija_ocena;
    }

    @Override
    public String toString() {
        return "Id {" + idOcena +
                ", ocena='" + kmetija_ocena + '\'' +
                '}';
    }

}