package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class PaketDao
{

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajPaket(String naziv)
    {
        String sql = "INSERT into paket(Naziv) values(?)";
        return jdbcTemplate.update(sql, new Object[]{naziv});
    }

    public boolean obstaja(String naziv){
        String sql ="SELECT * FROM paket WHERE Naziv=?";
        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql, new Object[]{naziv});
        if(rows.isEmpty())
        {
            return false;
        }
        return true;
    }

    public int getId(String naziv){
        String sql="SELECT idPaket FROM izdelek WHERE Naziv= '"+naziv+"'";
        int id=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
        return id;
    }

    public int posodobiNaziv(String naziv, int id)
    {
        String sql="UPDATE paket SET Naziv=? WHERE idIzdelek=?";
        return  jdbcTemplate.update(sql, new Object[]{naziv, id});
    }

    public int zbrisiPaket(int id)
    {
        String sql = "DELETE FROM paket WHERE idIzdelek=?";
        try {
            return jdbcTemplate.update(sql, new Object[]{id});
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return 1;
    }
}
