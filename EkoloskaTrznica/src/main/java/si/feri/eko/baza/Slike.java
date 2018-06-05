package si.feri.eko.baza;

public class Slike{

        int idSlika;
        String URLSlike;
        int tk_idProdukt;
        int tk_idKmetija;

public int getKmetija_idKmetija() {
        return tk_idProdukt;
        }

public void setKmetija_idKmetija(int Kmetija_idKmetija) {
        this.tk_idKmetija = Kmetija_idKmetija;
        }


public Slike(String URLSlike){
        this.URLSlike=URLSlike;
        }
public int getIdSlika() {
        return idSlika;
        }

public void setIdSlika(int idSlika) {
        this.idSlika = idSlika;
        }

public String getURLSlike() {
        return URLSlike;
        }

public void setURLSlike(String URLSlike) {
    this.URLSlike = URLSlike;
}

public int getUporabnik_idUporabnik() {
        return tk_idProdukt;
        }

public void setUporabnik_idUporabnik(int uporabnik_idUporabnik) {
        this.tk_idProdukt = uporabnik_idUporabnik;
        }
        }