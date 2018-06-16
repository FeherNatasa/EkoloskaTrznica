package si.feri.eko.baza;


public class SlikaI {
    private int id_slikaI;
    private String URLSlike;
    private int tk_idIzdelek;

    public SlikaI (int id_slika, int tk_idIzdelek){
        this.id_slikaI=id_slika;
        this.tk_idIzdelek=tk_idIzdelek;
    }

    public SlikaI(String URLSlike){
        this.URLSlike = URLSlike;
    }

    public SlikaI(String URLSlike, int tk_idIzdelek){
        this.URLSlike = URLSlike;
        this.tk_idIzdelek=tk_idIzdelek;
    }

    public int getId_slika() {
        return id_slikaI;
    }

    public void setId_slika(int id_slika) {
        this.id_slikaI = id_slika;
    }

    public String getURLSlike() { return URLSlike; }

    public void setURLSlike(String URLSlike) { this.URLSlike = URLSlike; }

    public int getTk_idIzdelek() {
        return tk_idIzdelek;
    }

    public void setTk_idIzdelek(int tk_idIzdelek) {
        this.tk_idIzdelek = tk_idIzdelek;
    }
}