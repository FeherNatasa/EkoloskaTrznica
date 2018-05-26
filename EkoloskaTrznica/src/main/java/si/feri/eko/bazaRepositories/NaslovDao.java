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

        public int dodajNaslov(String imeUlice, String hisnaStevilka){

            String sql ="INSERT into naslov(imeUlice,hisnaStevilka) values(?,?)";

            return jdbcTemplate.update(sql, new Object[]{imeUlice,hisnaStevilka});
        }

        public List<Integer> dobiId(String imeUlice, String hisnaStevilka){
            String sql = "SELECT idNaslov FROM Naslov WHERE ulica=? AND hisnaSt=? AND Kraj_idKraj=?";
            List<Integer> ret = new ArrayList<Integer>();
            List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql, new Object[]{imeUlice, hisnaStevilka});
            for (Map row : rows) {
                int id = (int)row.get("idNaslov");
                ret.add(id);
            }
            return ret;
        }
    }


