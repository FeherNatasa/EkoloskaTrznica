package si.feri.eko.baza;


public class SlikaK {
    private int id_slikaK;
    private String URLSlike;
    private int tk_idKmetija;

    public SlikaK (int id_slika, int tk_idKmetija){
        this.id_slikaK=id_slika;
        this.tk_idKmetija=tk_idKmetija;
    }

    public SlikaK(String URLSlike){
        this.URLSlike = URLSlike;
    }

    public SlikaK(String URLSlike, int tk_idKmetija){
        this.URLSlike = URLSlike;
        this.tk_idKmetija=tk_idKmetija;
    }

    public int getId_slika() {
        return id_slikaK;
    }

    public void setId_slika(int id_slika) {
        this.id_slikaK = id_slika;
    }

    public String getURLSlike() { return URLSlike; }

    public void setURLSlike(String URLSlike) { this.URLSlike = URLSlike; }

    public int getTk_idKmetija() {
        return tk_idKmetija;
    }

    public void setTk_idKmetijaettk_idKmetija(int tk_idKmetija) {
        this.tk_idKmetija = tk_idKmetija;
    }

    @Override
    public String toString() {
        return "SlikaK{" +
                "idSlikeK=" + id_slikaK +
                ", URLSlike='" + URLSlike + '\'' +
                ", tk_idKmetija='" + tk_idKmetija + '\'' +
                '}';
    }
}

