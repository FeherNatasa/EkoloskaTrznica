package si.feri.eko.baza;



public class Izdelek{
@Autowired KmetijaDao kmetijaDao;


    private int idIzdelek;

    private String naziv;
    private double masa;
    private double cena;

    @Autowired
    public Izdelek(){

    }
@Autowired
    public Izdelek(String naziv){
        this.naziv=naziv;
    }

    
    public Izdelek(String naziv, double masa, double cena) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
    }

    public Izdelek(String naziv, double masa, double cena, int idIzdelek) {
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.idIzdelek = idIzdelek;
    }
    
        @Autowired
    public Izdelek(int id, String naziv, double masa, double cena, int tk_idKmetija) {
        this.idIzdelek=id;
        this.naziv = naziv;
        this.masa = masa;
        this.cena = cena;
        this.tk_idKmetija=tk_idKmetija;
    }
    
    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public double getCena() {
        return cena;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    public double getMasa() {
        return masa;
    }

    public void setMasa(double masa) {
        this.masa = masa;
    }
    
    public int idIzdelek() {
        return idIzdelek;
    }

    public void setidIzdelek(int idIzdelek) {
        this.idIzdelek = idIzdelek;
    }
    
    public void setTk_idKmetija(int tk_idKmetija) {
        this.tk_idKmetija = tk_idKmetija;
    }

    public int getTk_idKmetija(){
    return tk_idKmetija;
    }

  @Override
    public String toString() {
        return "Izdelek{" +
                "id=" + idIzdelek +
                ", naziv='" + naziv + '\'' +
                ", masa='" + masa + '\'' +
                ", cena='" + cena + '\'' +
                ", tk_idKmetija='" + tk_idKmetija + '\'' +
                '}';
    
    }
}
