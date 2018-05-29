package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import si.feri.eko.baza.Uporabnik;

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


    public int dodajUporabnika(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo)
    {
        String sql = "insert into EKOHISKA.uporabnik (ime,priimek,email,uporabniskoIme,geslo) values(?,?,?,?,?)";
       // String sql = "INSERT into ekohiska.uporabnik(Ime,Priimek,Email,UporabniskoIme,Geslo) values(?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{Ime, Priimek, Email, UporabniskoIme, Geslo});
    }

  /*  public boolean obstaja(String uporabniskoIme){
        String sql ="SELECT * FROM uporabnik WHERE UporabniksoIme=?";
        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql, new Object[]{uporabniskoIme});
        if(rows.isEmpty())
        {
            return false;
        }
        return true;
    }
*/
    public boolean obstaja(String UporabniskoIme, String Geslo){
      String sql = "SELECT * FROM uporabnik WHERE UporabniskoIme= '"+UporabniskoIme+"'";
      List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);

      if(rows.size()<0)
      {
          String ime = (String)rows.get(0).get("UporabniskoIme");
          String g = (String)rows.get(0).get("Geslo");

          if(ime.equals(UporabniskoIme))
          {
              if(g.equals(Geslo))
              {
                  return true;
              }
              else
              {
                  return false;
              }
          }
      }

      return false;
  }

    public List<Uporabnik> vsiUporabniki(){
        String sql = "SELECT * FROM uporabnik"; //sql query
        List<Uporabnik> ret = new ArrayList<Uporabnik>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String Ime = (String)row.get("Ime");
            String Priimek = (String) row.get("Priimek");
            String Email = (String)row.get("Email");
            String UporabniskoIme = (String)row.get("UporabniskoIme");
            String Geslo = (String) row.get("Geslo");


            ret.add(new Uporabnik(Ime, Priimek, Email, UporabniskoIme, Geslo));
        }
        return ret;
    }

   /* public boolean pravilnoGeslo(String uporabniskoIme, String geslo){
        String sql ="SELECT Geslo FROM uporabnik WHERE UporabniskoIme = '"+uporabniskoIme+"'";
        String name = (String)jdbcTemplate.queryForObject(sql, String.class);
        if(name.equals(geslo))
        {
            return true;
        }
        return false;
    }
*/
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
