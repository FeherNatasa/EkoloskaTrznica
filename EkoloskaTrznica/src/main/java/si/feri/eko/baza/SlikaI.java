package si.feri.eko.baza;

public class SlikaI {
    private int id_slikaI;
    private String URLSlike;
    private int tk_idIzdelek;

    public SlikaI (int id_slika, int fk_id_dogodek){
        this.id_slikaI=id_slika;
        this.tk_idIzdelek=fk_id_dogodek;
    }

    public SlikaI(String URLSlike){
        this.URLSlike = URLSlike;
    }

    public SlikaI(String URLSlike, int fk_id_dogodek){
        this.URLSlike = URLSlike;
        this.tk_idIzdelek=fk_id_dogodek;
    }

    public int getId_slika() {
        return id_slikaI;
    }

    public void setId_slika(int id_slika) {
        this.id_slikaI = id_slika;
    }

    public String getURLSlike() { return URLSlike; }

    public void setURLSlike(String URLSlike) { this.URLSlike = URLSlike; }

    public int getFk_id_dogodek() {
        return tk_idIzdelek;
    }

    public void setFk_id_dogodek(int fk_id_dogodek) {
        this.tk_idIzdelek = fk_id_dogodek;
    }
}