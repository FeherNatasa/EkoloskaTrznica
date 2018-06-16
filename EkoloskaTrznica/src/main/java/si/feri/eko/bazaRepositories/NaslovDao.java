package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class NaslovDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajNaslov(String imeUlice, String hisnaStevilka, int tk_idKraj){

        String sql ="INSERT into naslov(imeUlice,hisnaStevilka, tk_idKraj) values(?,?,?)";

        return jdbcTemplate.update(sql, new Object[]{imeUlice,hisnaStevilka, tk_idKraj});
    }

    public List<Integer> dobiId(String imeUlice, String hisnaStevilka, int tk_idKraj){
        String sql = "SELECT idNaslov FROM Naslov WHERE ulica=? AND hisnaSt=? AND Kraj_idKraj=?";
        List<Integer> ret = new ArrayList<Integer>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql, new Object[]{imeUlice, hisnaStevilka, tk_idKraj});
        for (Map row : rows) {
            int id = (int)row.get("idNaslov");
            ret.add(id);
        }
        return ret;
    }

    public boolean obstajaNaslov(String imeUlice, String hisnaStevilka){
        String sql ="SELECT * FROM naslov WHERE imeUlice='"+imeUlice+"' AND hisnaStevilka='"+hisnaStevilka+"'";
        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql);
        if(rows.isEmpty())
        {
            return false;
        }
        return true;
    }

    public String vrniNaslov(int id){
        String sql = "SELECT imeUlice, hisnaStevilka FROM kraj WHERE idNaslov = '"+id+"'";
        String naslov = (String)jdbcTemplate.queryForObject(sql, String.class);

        return naslov;
    }
}


