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

    public int dodajKmetijo(String naziv, String opis, String email, String telefonskaStevilka)
    {
        String sql = "INSERT into kmetija(Naziv,Opis,Email,TelefonskaStevilka) values(?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{naziv, opis, email, telefonskaStevilka});
    }

    public boolean obstaja(String naziv){
        String sql ="SELECT * FROM kmetija WHERE Naziv=?";
        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql, new Object[]{naziv});
        if(rows.isEmpty())
        {
            return false;
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

    public List<Kmetija> vseKmetije(){
        String sql = "SELECT * FROM Kraj";
        List<Kmetija> ret = new ArrayList<Kmetija>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String naziv = (String)row.get("naziv");
            String opis = (String)row.get("opis");
            String email = (String)row.get("email");
            String telefonskaStevilka = (String)row.get("telefonskaStevilka");
            ret.add(new Kmetija(naziv, opis, email, telefonskaStevilka));
        }
        return ret;
    }
}
