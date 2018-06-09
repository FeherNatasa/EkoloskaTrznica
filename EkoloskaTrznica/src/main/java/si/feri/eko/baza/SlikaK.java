package si.feri.eko.baza;

public class SlikaK {
        private int id_slikaK;
        private String URLSlike;
        private int tk_idKmetija;

        public SlikaK (int id_slika, int fk_id_dogodek){
            this.id_slikaK=id_slika;
            this.tk_idKmetija=fk_id_dogodek;
        }

        public SlikaK(String URLSlike){
            this.URLSlike = URLSlike;
        }

        public SlikaK(String URLSlike, int fk_id_dogodek){
            this.URLSlike = URLSlike;
            this.tk_idKmetija=fk_id_dogodek;
        }

        public int getId_slika() {
            return id_slikaK;
        }

        public void setId_slika(int id_slika) {
            this.id_slikaK = id_slika;
        }

        public String getURLSlike() { return URLSlike; }

        public void setURLSlike(String URLSlike) { this.URLSlike = URLSlike; }

        public int getFk_id_dogodek() {
            return tk_idKmetija;
        }

        public void setFk_id_dogodek(int fk_id_dogodek) {
            this.tk_idKmetija = fk_id_dogodek;
        }
    }


