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
            int idKraj = (int) row.get("idKraj");
            int postnaStevilka = (int) row.get("postnaStevilka");
            String obcina = (String)row.get("obcina");
            String regija = (String)row.get("regija");
            ret.add(new Kraj(idKraj,postnaStevilka, obcina, regija));
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

    public List<String> getRegije(){
        String sql = "SELECT regija FROM Kraj";
        List<String> ret = new ArrayList<String>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String regija = (String) row.get("regija");
            ret.add(regija);
        }
        return ret;
    }










    public int getId(int postnaStevilka){
        String sql="SELECT idKraj FROM kraj WHERE PostnaStevilka= '"+postnaStevilka+"'";
        int id=Integer.parseInt(jdbcTemplate.queryForObject(sql, String.class));
        return id;
    }






    public String getRegija(int tk_idKraj){
        String sql="SELECT regija FROM kraj WHERE idKraj= '"+tk_idKraj+"'";
        String regija = (String)jdbcTemplate.queryForObject(sql, String.class);
        return regija;
    }




    public ArrayList<Integer> getIdRegija(String regija){

        String sql="SELECT * FROM kraj WHERE Regija= '"+regija+"'";


        ArrayList<Integer> intArray = new ArrayList<>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKraj = (int) row.get("idKraj");
            intArray.add(idKraj);
        }
        return intArray;
    }


    public boolean obstajaKraj(int postnaStevilka){
        String sql ="SELECT * FROM Kraj WHERE postnaStevilka='"+postnaStevilka+"'";

        List<Map<String,Object>> rows =  jdbcTemplate.queryForList(sql);

            if(rows.isEmpty())
            {
                return false;
            }
            return true;

    }

    public String vrniKraj(int id){
        String sql = "SELECT obcina FROM kraj WHERE idKraj = '"+id+"'";
        String kraj = (String)jdbcTemplate.queryForObject(sql, String.class);

        return kraj;
    }


}
