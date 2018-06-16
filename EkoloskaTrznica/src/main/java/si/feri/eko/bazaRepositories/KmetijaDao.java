package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import si.feri.eko.baza.Kmetija;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class KmetijaDao
{

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    KrajDao krajDao;


    public int dodajKmetijo(String naziv, String email, String telefonskaStevilka, String prevzem, String opis, int tk_idKraj, int tk_idUporabnik) {
        String sql = "insert into EKOHISKA.kmetija (naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik) values(?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik});


    }


    public boolean obstaja(int id){
        String sql = "SELECT idKmetija FROM kmetija WHERE tk_idUporabnik = '"+id+"'";

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            if (row.get("idKmetija") == null) {
                return false;
            } else
            {
                return true;
            }
        }
        return true;
    }


    public int getId(String naziv){
        String sql="SELECT idKmetija FROM kmetija WHERE Naziv= '"+naziv+"'";
        int id=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
        return id;
    }

    public int posodobiNaziv(String naziv, int id)
    {
        String sql="UPDATE kmetija SET Naziv=? WHERE idKmetija=?";
        return  jdbcTemplate.update(sql, new Object[]{naziv, id});
    }

    public int zbrisiKmetijo(int id)
    {
        String sql = "DELETE FROM kmetija WHERE idKmetija=?";
        try {
            return jdbcTemplate.update(sql, new Object[]{id});
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    public List<Kmetija> vseKmetije() {
        String sql = "SELECT * FROM Kmetija";
        List<Kmetija> ret = new ArrayList<Kmetija>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKmetija = (int) row.get("idKmetija");
            String naziv = (String) row.get("naziv");
            String email = (String) row.get("email");
            String telefonskaStevilka = (String) row.get("telefonskaStevilka");
            String prevzem = (String) row.get("prevzem");
            String opis = (String) row.get("opis");
            int tk_idKraj = (int) row.get("tk_idKraj");
            int tk_idUporabnik = (int) row.get("tk_idUporabnik");

            ret.add(new Kmetija(idKmetija,naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik));
        }
        return ret;
    }












    public List<Kmetija> kmetijaRegija(String regija){

        //preverim kje je ta regija
        ArrayList<Integer> idKraj = krajDao.getIdRegija(regija);


        List<Kmetija> ret = new ArrayList<Kmetija>();
        for(Integer k : idKraj)
        {
            String sql = "SELECT * FROM Kmetija WHERE tk_idKraj= '"+k+"'";
            List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
            for (Map row : rows) {
                int idKmetija = (int) row.get("idKmetija");
                String naziv = (String)row.get("naziv");
                String email = (String)row.get("email");
                String telefonskaStevilka = (String)row.get("telefonskaStevilka");
                String prevzem = (String)row.get("prevzem");
                String opis = (String)row.get("opis");
                int tk_idKraj = (int)row.get("tk_idKraj");
                int tk_idUporabnik = (int)row.get("tk_idUporabnik");
                ret.add(new Kmetija(idKmetija, naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik));

            }

        }
        return ret;
    }


    public String vrniNazivKmetije(int id){
        String sql = "SELECT naziv FROM kmetija WHERE idKmetija = '"+id+"'";
        String naziv = (String)jdbcTemplate.queryForObject(sql, String.class);

        return naziv;
    }

    public String vrniOpisKmetije(int id){
        String sql = "SELECT opis FROM kmetija WHERE idKmetija = '"+id+"'";
        String opis = (String)jdbcTemplate.queryForObject(sql, String.class);

        return opis;
    }

    public String vrniNaslovKmetije(int id){
        String sql = "SELECT naslov FROM kmetija WHERE idKmetija = '"+id+"'";
        String naslov = (String)jdbcTemplate.queryForObject(sql, String.class);

        return naslov;
    }

    public String vrniTelKmetije(int id){
        String sql = "SELECT telefonskaStevilka FROM kmetija WHERE idKmetija = '"+id+"'";
        String tel = (String)jdbcTemplate.queryForObject(sql, String.class);

        return tel;
    }

    public String vrniPrevzemKmetije(int id){
        String sql = "SELECT prevzem FROM kmetija WHERE idKmetija = '"+id+"'";
        String prevzem = (String)jdbcTemplate.queryForObject(sql, String.class);

        return prevzem;
    }

    public int vrniTk_idUporabnik(int id){
        String sql = "SELECT tk_idUporabnik FROM kmetija WHERE id = '"+id+"'";
        int tkid = (int)jdbcTemplate.queryForObject(sql, int.class);

        return tkid;
    }




    //katera je njegova kmetija??
    public Kmetija vrniKmetijo(int idUporabnik){
        String sql = "SELECT * FROM Kmetija WHERE tk_idUporabnik = '"+ idUporabnik +"'";


        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKmetija = (int) row.get("idKmetija");
            String naziv = (String)row.get("naziv");
            String email = (String)row.get("email");
            String telefonskaStevilka = (String)row.get("telefonskaStevilka");
            String prevzem = (String)row.get("prevzem");
            String opis = (String)row.get("opis");
            int tk_idKraj = (int)row.get("tk_idKraj");
            int tk_idUporabnik = (int)row.get("tk_idUporabnik");
            return new Kmetija(idKmetija, naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik);

        }

        return null;
    }



    public List<Kmetija> getKmetija(int id){
        String sql = "SELECT * FROM Kmetija WHERE idKmetija='"+id+"'";

        List<Kmetija> ret =new ArrayList<Kmetija>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKmetija = (int) row.get("idKmetija");
            String naziv = (String)row.get("naziv");
            String email = (String)row.get("email");
            String telefonskaStevilka = (String)row.get("telefonskaStevilka");
            String prevzem = (String)row.get("prevzem");
            String opis = (String)row.get("opis");
            int tk_idKraj = (int)row.get("tk_idKraj");
            int tk_idUporabnik = (int)row.get("tk_idUporabnik");
            ret.add(new Kmetija(idKmetija, naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik));

        }

        return ret;
    }

    public String getNaziv(int id){
              String sql= "SELECT naziv  FROM Kmetija WHERE idKmetija='"+id+"'";
                String naziv= (String) jdbcTemplate.queryForObject(sql, String.class);
               return naziv;
        }

















    public List<Kmetija> vseVKmetiji(int idKmetija) {
        String sql = "SELECT * FROM kmetija WHERE tk_idUporabnik = '"+idKmetija+"'";
        List<Kmetija> ret = new ArrayList<Kmetija>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String naziv = (String)row.get("naziv");
            String email = (String)row.get("email");
            String telefonskaStevilka = (String)row.get("telefonskaStevilka");
            String prevzem = (String)row.get("prevzem");
            String opis = (String)row.get("opis");
            int tk_idKraj = (int)row.get("tk_idKraj");
            int tk_idUporabnik = (int)row.get("tk_idUporabnik");
            ret.add(new Kmetija(idKmetija, naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik));
        }
        return ret;
    }

    public int updateKmetija (int idKmetija, String naziv, String email, String telefonskaStevilka, String prevzem, String opis, int tk_idKraj, int tk_idUporabnik){
        String sql="UPDATE kmetija SET naziv = ?, email = ?, telefonskaStevilka = ?, prevzem = ?, opis = ?, tk_idKraj = ?, tk_idUporabnik=? WHERE idKmetija = '"+idKmetija+"'";
        return jdbcTemplate.update(sql, new Object[]{naziv, email, telefonskaStevilka, prevzem, opis, tk_idKraj, tk_idUporabnik});
    }



}
