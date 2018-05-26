package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import si.feri.eko.baza.Izdelek;

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

    public int dodajIzdelek(String naziv, double cena)
    {
        String sql = "INSERT into izdelek(Naziv, Cena) values(?)";
        return jdbcTemplate.update(sql, new Object[]{naziv});
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

    public List<Izdelek> vrniVse(){
        String sql = "SELECT * FROM izdelek";
        List<Izdelek> ret = new ArrayList<Izdelek>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int id = (int)row.get("idIzdelek");
            double cena=(double)row.get("cena");
            }
        return ret;
    }
}
