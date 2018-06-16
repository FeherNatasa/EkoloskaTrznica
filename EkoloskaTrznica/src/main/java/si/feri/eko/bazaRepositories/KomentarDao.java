package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import si.feri.eko.baza.Komentar;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class KomentarDao
{
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajKomentar(String vsebina)
    {
        String sql = "insert into EKOHISKA.komentar(Vsebina) values(?)";
        return jdbcTemplate.update(sql, new Object[]{vsebina});
    }
/*
    public String vrniVsebino (int idKomentar)
    {
        String sql = "SELECT vsebina FROM EKOHISKA.komentar WHERE idKomentar = '"+ idKomentar +"'";
        return jdbcTemplate.update(sql, new Object[]{vsebina});
    }
*/
    public int izbrisiKomentar(int id)
    {
        String sql = "DELETE FROM komentar WHERE idKomentar=?";
        try {
            return jdbcTemplate.update(sql, new Object[]{id});
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    public int urediKomentar(String vsebina, int id)
    {
        String sql="UPDATE komentar SET vsebina=? WHERE idKomentar=?";
        return jdbcTemplate.update(sql, new Object[]{vsebina, id});
    }


    public List<Komentar> vsiKomentarji(){
        String sql = "SELECT * FROM komentar";
        List<Komentar> ret = new ArrayList<>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row: rows){
            int idKomentar = (int)row.get("idKomentar");
            String vsebina = (String)row.get("vsebina");
            int tk_idKmetija = (int)row.get("tk_idKomentar");
            int tk_idUporabnik = (int)row.get("tk_idUporabnik");

            ret.add(new Komentar(vsebina, tk_idKmetija, tk_idUporabnik));
        }
        return ret;
    }


    //vrni komentarje ki imajo isti tk_idKmetija kot idKmetija
    public Komentar vrniKomentarNaKmetiji(int idKmetija){
        String sql = "SELECT * FROM komentar WHERE tk_idKmetija = '"+ idKmetija +"'";


        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String vsebina = (String)row.get("vsebina");
            int tk_idKmetija = 0;
            int tk_idUporabnik = 0;
            if(row.get("tk_idKmetija") == null)
            {
                tk_idKmetija = 0;
            }
            else {
                tk_idKmetija = (int) row.get("tk_idKmetija");
            }

            if(row.get("tk_idUporabnik") == null)
            {
                tk_idKmetija = 0;
            }
            else {
                tk_idKmetija = (int) row.get("tk_idUporabnik");
            }

            return (new Komentar(vsebina, tk_idKmetija, tk_idUporabnik));
        }
        return null;
    }

    public List<Komentar> vsiKomentarjikmetije(int tk_idKmetije){
        String sql = "SELECT * FROM komentar  WHERE tk_idKmetija= '"+tk_idKmetije+"'";
        List<Komentar> ret = new ArrayList<>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int id = (int)row.get("idKomentar");
            String vsebina = (String)row.get("vsebina");
            /*int tk_idKmetija = 0;
            int tk_idUporabnik = 0;
            if(row.get("tk_idKmetija") == null)
            {
                tk_idKmetija = 0;
            }
            else {*/
            int   tk_idKmetija = (int) row.get("tk_idKmetija");
           /* }

            if(row.get("tk_idUporabnik") == null)
            {
                tk_idUporabnik = 0;
            }
            else {*/
            int   tk_idUporabnik = (int) row.get("tk_idUporabnik");
            //  }
            ret.add(new Komentar(id,vsebina, tk_idKmetija, tk_idUporabnik));
        }
        return ret;
    }

}



