package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import si.feri.eko.baza.Kraj;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class KrajDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajKraj(int postnaStevilka, String obcina, String regija)
    {
        String sql ="INSERT into kraj(PostnaStevilka,Obcina,Regija) values(?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{postnaStevilka, obcina, regija});
    }

    public List<Kraj> vsiKraji(){
        String sql = "SELECT * FROM Kraj";
        List<Kraj> ret = new ArrayList<Kraj>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int postnaStevilka = (int) row.get("postnaStevilka");
            String obcina = (String)row.get("obcina");
            String regija = (String)row.get("regija");
            ret.add(new Kraj(postnaStevilka, obcina, regija));
        }
        return ret;
    }

    public List<Integer> vrniId(Integer postnaStevilka, String obcina){
        String sql = "SELECT idKraj FROM Kraj WHERE postnaStevilka=? AND obcina=?";
        List<Integer> ret = new ArrayList<Integer>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql, new Object[]{obcina, postnaStevilka});
        for (Map row : rows) {
            int id = (int)row.get("idKraj");
            ret.add(id);
        }
        return ret;
    }


}
