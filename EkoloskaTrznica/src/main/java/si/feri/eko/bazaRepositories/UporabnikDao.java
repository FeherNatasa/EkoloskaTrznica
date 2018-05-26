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
public class UporabnikDao
{

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajUporabnika(String ime, String priimek, String email, String uporabniskoIme, String geslo)
    {
        String sql = "INSERT into uporabnik(Ime,Priimek,Email,UporabniskoIme,Geslo) values(?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{ime, priimek, email, uporabniskoIme, geslo});
    }

    public boolean obstaja(String uporabniskoIme){
        String sql ="SELECT * FROM uporabnik WHERE UporabniksoIme=?";
        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql, new Object[]{uporabniskoIme});
        if(rows.isEmpty())
        {
            return false;
        }
        return true;
    }

    public boolean pravilnoGeslo(String uporabniskoIme, String geslo){
        String sql ="SELECT Geslo FROM uporabnik WHERE UporabniskoIme = '"+uporabniskoIme+"'";
        String name = (String)jdbcTemplate.queryForObject(sql, String.class);
        if(name.equals(geslo))
        {
            return true;
        }
        return false;
    }

    public int getId(String uporabniskoIme){
        String sql="SELECT idUporabnik FROM uporabnik WHERE UporabniskoIme= '"+uporabniskoIme+"'";
        int id=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
        return id;
    }

    public int posodobiGeslo(String geslo, int id)
    {
        String sql="UPDATE uporabnik SET Geslo=? WHERE idUporabnik=?";
        return  jdbcTemplate.update(sql, new Object[]{geslo, id});
    }

    public int zbrisiRacun(int id)
    {
        String sql = "DELETE FROM uporabnik WHERE idUporabnik=?";
        try {
            return jdbcTemplate.update(sql, new Object[]{id});
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return 1;
    }
}
