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

    public int dodajIzdelek(String naziv, double masa, double cena)
    {
        String sql = "insert into EKOHISKA.izdelek (Naziv, Masa, Cena) values(?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{naziv, masa, cena});
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
            int tk_idKmetija=(int)row.get("tk_idKmetija");
            ret.add(new Izdelek(id, naziv, masa, cena, tk_idKmetija));
        }
        return ret;
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
