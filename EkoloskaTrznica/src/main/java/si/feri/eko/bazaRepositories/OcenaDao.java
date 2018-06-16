
package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import si.feri.eko.baza.Ocena;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class OcenaDao{
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajOceno(int kmetija_ocena)
    {
        String sql = "insert into EKOHISKA.ocena(kmetija_ocena) values (?)";
        return jdbcTemplate.update(sql, new Object[]{kmetija_ocena});
    }

    public int spremeniOceno(int kmetija_ocena, int idOcena)
    {
        String sql="UPDATE ocena SET kmetija_ocena=? WHERE idKomentar=?";
        return jdbcTemplate.update(sql, new Object[]{kmetija_ocena, idOcena});
    }

    public boolean obstajaOcena(int idOcena, int kmetija_ocena)
    {
        String sql = "SELECT * FROM ocena WHERE idOcena = '"+idOcena+"'";
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);

        if(rows.size()<0)
        {
            String id_ocene = (String)rows.get(0).get("idOcena");
            String ocena_kmetije = (String)rows.get(0).get("kmetija_ocena");

            if(id_ocene.equals(idOcena))
            {
                if(ocena_kmetije.equals(kmetija_ocena))
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

    public List<Ocena> vseOcene(){
        String sql = "SELECT * FROM ocena";
        List<Ocena> ret = new ArrayList<Ocena>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row: rows){
            //int idOcena = (int)row.get("idOcena");
            int kmetija_ocena = (int)row.get("kmetija_ocena");
            ret.add(new Ocena(/*idOcena,*/ kmetija_ocena));
        }
        return ret;
    }

    public ArrayList<Integer> getOcene(){

        String sql="SELECT * FROM ocena";


        ArrayList<Integer> intArray = new ArrayList<>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int ocena = (int) row.get("kmetija_ocena");
            intArray.add(ocena);
        }
        return intArray;
    }

}