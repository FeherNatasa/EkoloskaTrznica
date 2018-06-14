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

    @Autowired
    KmetijaDao kmetijaDao;

    @Autowired
    KrajDao krajDao;


    public int dodajKmetijo(String naziv, String email, String telefonskaStevilka, String prevzem, String opis)
    {
        String sql = "insert into EKOHISKA.kmetija (naziv, email, telefonskaStevilka, prevzem, opis) values(?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{naziv, email, telefonskaStevilka, prevzem, opis});
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
    
    public Integer getIdKmetije(String nazi){
        int idKmetija = 0;
        if (nazi == null){
            return null;
        } else {
            String sql = "SELECT idKmetija, naziv FROM kmetija WHERE naziv= ?";
            List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql, new Object[] {nazi});
            for (Map row:rows){
                String naziv = (String) row.get("naziv");
                idKmetija = (int) row.get("idKmetija");
            }
            return idKmetija;
        }
    }

    public List<Kmetija> vseKmetije(){
        String sql = "SELECT * FROM Kmetija";
        List<Kmetija> ret = new ArrayList<Kmetija>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String naziv = (String)row.get("naziv");
            String email = (String)row.get("email");
            String telefonskaStevilka = (String)row.get("telefonskaStevilka");
            String prevzem = (String)row.get("prevzem");
            String opis = (String)row.get("opis");
            ret.add(new Kmetija(naziv, email, telefonskaStevilka, prevzem, opis));
        }
        return ret;
    }
    
       public List<Kmetija> getKmetija(int id){
        String sql = "SELECT *  FROM Kmetija WHERE idKmetija='"+id+"'";


        List<Kmetija> ret =new ArrayList<Kmetija>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
       for (Map row : rows) {
       String naziv = (String)row.get("naziv");
       String email = (String)row.get("email");
       String telefonskaStevilka = (String)row.get("telefonskaStevilka");
       String prevzem = (String)row.get("prevzem");
       String opis = (String)row.get("opis");
       ret.add(new Kmetija(id,naziv,email,telefonskaStevilka, prevzem,opis));
   }
        return ret;



}
public String getNaziv(int id){
        String sql= "SELECT naziv  FROM Kmetija WHERE idKmetija='"+id+"'";
        String naziv= (String) jdbcTemplate.queryForObject(sql, String.class);
        return naziv;
}
}
