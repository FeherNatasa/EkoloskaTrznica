package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import si.feri.eko.baza.Izdelek;
import si.feri.eko.baza.Kmetija;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class IzdelekDao
{

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajIzdelek(String naziv, double masa, double cena, int tk_idKmetija)
    {
        String sql = "insert into EKOHISKA.izdelek (Naziv, Masa, Cena, tk_idKmetija) values(?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{naziv, masa, cena, tk_idKmetija});
    }

    public boolean obstaja(String naziv){
        String sql ="SELECT * FROM izdelek WHERE Naziv=?";
        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql, new Object[]{naziv});
        if(rows.isEmpty())
        {
            return false;
        }
        return true;
    }

    public int getId(String naziv){
        String sql="SELECT idIzdelek FROM izdelek WHERE Naziv= '"+naziv+"'";
        int id=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
        return id;
    }


    public int getIdIzdelka(int tk_idKmetija){
        String sql="SELECT idIzdelek FROM izdelek WHERE tk_idKmetija= '"+tk_idKmetija+"'";
        int id=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
        return id;
    }


    public List<Integer> vrniIdIzdelka(int tk_idKmetija){
        String sql = "SELECT idKraj FROM Kraj WHERE tk_idKmetija= '"+tk_idKmetija+"'";
        List<Integer> ret = new ArrayList<Integer>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql, new Object[]{tk_idKmetija});
        for (Map row : rows) {
            int id = (int)row.get("idIzdelek");
            ret.add(id);
        }
        return ret;
    }

    public int posodobiNaziv(String naziv, int id)
    {
        String sql="UPDATE izdelek SET Naziv=? WHERE idIzdelek=?";
        return  jdbcTemplate.update(sql, new Object[]{naziv, id});
    }

    public int zbrisiIzdelek(int id)
    {
        String sql = "DELETE FROM izdelek WHERE idIzdelek=?";
        try {
            return jdbcTemplate.update(sql, new Object[]{id});
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    public List<Izdelek> vsiIzdelki(){
        String sql = "SELECT * FROM izdelek";
        List<Izdelek> ret = new ArrayList<Izdelek>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int id = (int)row.get("idIzdelek");
            String naziv = (String)row.get("naziv");
            double masa=(double)row.get("masa");
            double cena=(double)row.get("cena");
            int kolicina = 0;
            if(row.get("kolicina") == null)
            {
                kolicina = 0;
            }
            else {
                kolicina = (int) row.get("kolicina");
            }
            int tk_idKmetija = (int)row.get("tk_idKmetija");
            ret.add(new Izdelek(id,naziv, masa, cena, kolicina, tk_idKmetija));
            }
        return ret;
    }







    public List<Izdelek> vsiIzdelkiKmetije(int tk_idKmetije){
        String sql = "SELECT * FROM izdelek  WHERE tk_idKmetija= '"+tk_idKmetije+"'";
        List<Izdelek> ret = new ArrayList<Izdelek>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int id = (int)row.get("idIzdelek");
            String naziv = (String)row.get("naziv");
            double masa=(double)row.get("masa");
            double cena=(double)row.get("cena");
            int kolicina = 0;
            if(row.get("kolicina") == null)
            {
                kolicina = 0;
            }
            else {
                kolicina = (int) row.get("kolicina");
            }
            int tk_idKmetija = (int)row.get("tk_idKmetija");

            ret.add(new Izdelek(id,naziv, masa, cena, kolicina, tk_idKmetija));
        }
        return ret;
    }


    public List<Izdelek> vKosarici(int id){
        String sql = "SELECT * FROM izdelek  WHERE tk_idKosarica= '"+id+"'";
        List<Izdelek> ret = new ArrayList<Izdelek>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idIzdelek = (int)row.get("idIzdelek");
            String naziv = (String)row.get("naziv");
            double masa=(double)row.get("masa");
            double cena=(double)row.get("cena");
            int kolicina = 0;
            if(row.get("kolicina") == null)
            {
                kolicina = 0;
            }
            else {
                kolicina = (int) row.get("kolicina");
            }
            int tk_idKmetija = (int)row.get("tk_idKmetija");
            ret.add(new Izdelek(id,naziv, masa, cena, kolicina, tk_idKmetija));
        }
        return ret;
    }


    public Izdelek vrniIzdelek(int id){
        String sql = "SELECT * FROM izdelek WHERE idIzdelek = '"+ id +"'";


        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String naziv = (String)row.get("naziv");
            double masa=(double)row.get("masa");
            double cena=(double)row.get("cena");
            int kolicina = 0;
            if(row.get("kolicina") == null)
            {
                kolicina = 0;
            }
            else {
                kolicina = (int) row.get("kolicina");
            }
            int tk_idKmetija = (int)row.get("tk_idKmetija");


            return (new Izdelek(id,naziv, masa, cena, kolicina, tk_idKmetija));
        }
        return null;
    }

    public int updateKolicinaIzdelka(int idIzdelek, String naziv, double masa, double cena, int kolicina,  int tk_idKmetija){
        String sql="UPDATE izdelek SET naziv = ?, masa = ?, cena = ?, kolicina= '"+ kolicina +"', tk_idKmetija = ? WHERE idIzdelek = '"+ idIzdelek +"'";
        return  jdbcTemplate.update(sql, new Object[]{naziv, masa, cena, tk_idKmetija});
        }

    public int izbrisiIzdelek(int id)
    {
        String sql = "DELETE FROM izdelek WHERE idIzdelek = '"+ id+"'";
        try {
            return jdbcTemplate.update(sql, new Object[]{id});
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return 1;
    }


    public List<Izdelek> getIzdelek(String naziv){
        String sql = "SELECT *  FROM Izdelek WHERE Izdelek.naziv LIKE '%"+naziv+"%' ";


        List<Izdelek> ret =new ArrayList<Izdelek>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);

        for (Map row : rows) {
            int id = (int)row.get("idIzdelek");
            naziv = (String)row.get("naziv");
            double masa=(double)row.get("masa");
            double cena=(double)row.get("cena");
            int tk_idKmetija=(int)row.get("tk_idKmetija");
            ret.add(new Izdelek(id, naziv, masa, cena, tk_idKmetija));
        }


        return ret;
    }

    public int getTk_idKmetija(String naziv){
        String sql="SELECT tk_idKmetija FROM izdelek WHERE Naziv= '"+naziv+"'";
        int tk_idKmetija=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
        System.out.print(tk_idKmetija);
        return tk_idKmetija;
    }









}
