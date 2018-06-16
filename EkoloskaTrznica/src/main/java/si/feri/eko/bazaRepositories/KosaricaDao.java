package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import si.feri.eko.baza.Izdelek;
import si.feri.eko.baza.Kosarica;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class KosaricaDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajKosarico(String naziv, double masa, double cena, int kolicina, boolean prodano, int tk_idUporabnik, int tk_idIzdelek) {
        String sql = "insert into EKOHISKA.kosarica (naziv, masa, cena, kolicina, prodano, tk_idUporabnik, tk_idIzdelek) values(?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{naziv, masa, cena, kolicina, prodano, tk_idUporabnik, tk_idIzdelek});
    }

    public Kosarica vrniKosarico(int idUporabnik){
        String sql = "SELECT * FROM kosarica WHERE tk_idUporabnik = '"+idUporabnik+"'  AND prodano = false ";


        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKosarica = (int) row.get("idKosarica");
            String naziv = (String)row.get("naziv");
            double masa = (double)row.get("masa");
            double cena = (double)row.get("cena");
            int kolicina = (int)row.get("kolicina");
            boolean prodano = (boolean)row.get("prodano");
            int tk_idUporabnik = (int) row.get("tk_idUporabnik");
            int tk_idIzdelek = (int) row.get("tk_idIzdelek");
            return (new Kosarica(idKosarica, naziv, masa, cena, kolicina, prodano,tk_idUporabnik, tk_idIzdelek));
        }
        return null;
    }


    public Kosarica vrniKosaricoBrisi(int idKosarica){
        String sql = "SELECT * FROM kosarica WHERE idKosarica = '"+idKosarica+"' AND prodano = false ";


        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKosaricaa = (int) row.get("idKosarica");
            String naziv = (String)row.get("naziv");
            double masa = (double)row.get("masa");
            double cena = (double)row.get("cena");
            int kolicina = (int)row.get("kolicina");
            boolean prodano = (boolean)row.get("prodano");
            int tk_idUporabnik = (int) row.get("tk_idUporabnik");
            int tk_idIzdelek = (int) row.get("tk_idIzdelek");
            return (new Kosarica(idKosaricaa, naziv, masa, cena, kolicina, prodano,tk_idUporabnik, tk_idIzdelek));
        }
        return null;
    }

    public List<Kosarica> vseVKosarici(int idUporabnika) {
        String sql = "SELECT * FROM kosarica WHERE tk_idUporabnik = '"+idUporabnika+"'  AND prodano = false ";
        List<Kosarica> ret = new ArrayList<Kosarica>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKosarica = (int) row.get("idKosarica");
            String naziv = (String)row.get("naziv");
            double masa = (double)row.get("masa");
            double cena = (double)row.get("cena");
            int kolicina = (int)row.get("kolicina");
            boolean prodano = (boolean)row.get("prodano");
            int tk_idUporabnik = (int) row.get("tk_idUporabnik");
            int tk_idIzdelek = (int) row.get("tk_idIzdelek");
            ret.add(new Kosarica(idKosarica, naziv, masa, cena, kolicina, prodano,tk_idUporabnik, tk_idIzdelek));
        }
        return ret;
    }

    public List<Kosarica> kupljeniIzdelki() {
        String sql = "SELECT * FROM kosarica WHERE  prodano = true";
        List<Kosarica> ret = new ArrayList<Kosarica>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int idKosarica = (int) row.get("idKosarica");
            String naziv = (String)row.get("naziv");
            double masa = (double)row.get("masa");
            double cena = (double)row.get("cena");
            int kolicina = (int)row.get("kolicina");
            boolean prodano = (boolean)row.get("prodano");
            int tk_idUporabnik = (int) row.get("tk_idUporabnik");
            int tk_idIzdelek = (int) row.get("tk_idIzdelek");
            ret.add(new Kosarica(idKosarica, naziv, masa, cena, kolicina, prodano,tk_idUporabnik, tk_idIzdelek));
        }
        return ret;
    }

    public double vrniCeno(int id){
        String sql = "SELECT cena FROM kosarica WHERE idKosarica = '"+id+"' AND prodano = false ";

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            double cena = 0;
            if (row.get("cena") == null) {
                cena = 0;
            } else {
                cena = (double) row.get("cena");
            }

            return cena;
        }
        return 0;

    }

    public int vrniIdKosarice(int id){
        String sql = "SELECT idKosarica FROM kosarica WHERE tk_idUporabnik = '"+id+"' AND prodano = false ";
        int tk_idUporabnika = (int)jdbcTemplate.queryForObject(sql, int.class);

        return tk_idUporabnika;
    }

    public int vrniKolicino(int id){
        String sql = "SELECT kolicina FROM kosarica WHERE idKosarica = '"+id+"' AND prodano = false ";

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            int kolicina = 0;
            if (row.get("kolicina") == null) {
                kolicina = 0;
            } else {
                kolicina = (int) row.get("kolicina");
            }

            return kolicina;
        }
        return 0;
    }

    public int updateKosaricoProdano(int idKosarica,String naziv, double masa, double cena, int kolicina, boolean prodano, int tk_idUporabnik, int tk_idIzdelek){
        String sql="UPDATE kosarica SET  naziv = ?, masa = ?, cena  = ?, kolicina =?, prodano = true, tk_idUporabnik = ?, tk_idIzdelek = ?  WHERE idKosarica = '"+ idKosarica+"'";
        return  jdbcTemplate.update(sql, new Object[]{naziv, masa, cena, kolicina, tk_idUporabnik, tk_idIzdelek});
    }



    public int updateKosaricoCena(int idKosarica, String naziv, double masa, double cena, int kolicina, boolean prodano, int tk_idUporabnik, int tk_idIzdelek){
        String sql="UPDATE kosarica SET cena = '"+ cena +"', naziv = ?, masa = ?, kolicina = ?, prodano = ?, tk_idUporabnik = ?, tk_idIzdelek = ? WHERE idKosarica = '"+ idKosarica+"'";
        return  jdbcTemplate.update(sql, new Object[]{naziv, masa, kolicina, prodano, tk_idUporabnik, tk_idIzdelek});
    }

    public int updateKosaricoKolicina(int idKosarica,String naziv, double masa, double cena, int kolicina, boolean prodano, int tk_idUporabnik, int tk_idIzdelek){
        String sql="UPDATE kosarica SET  naziv = ?, masa = ?, cena  = ?, kolicina = '"+ kolicina +"', prodano = ?, tk_idUporabnik = ?, tk_idIzdelek = ?  WHERE idKosarica = '"+ idKosarica+"'";
        return  jdbcTemplate.update(sql, new Object[]{naziv, masa, cena, prodano, tk_idUporabnik, tk_idIzdelek});
    }

    public boolean obstaja( int idIzdelka){
        String sql = "SELECT idKosarica FROM kosarica WHERE tk_idIzdelek = '"+idIzdelka+"'  AND prodano = false ";

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            if (row.get("idKosarica") == null) {
                return false;
            } else
            {
                return true;
            }
        }
        return false;
    }

    public int izbrisiKosarico(int id)
    {
        String sql = "DELETE FROM kosarica WHERE idKosarica =? AND prodano = false ";

        return jdbcTemplate.update(sql, id);
    }

    public double cenaKosarice(int idUporabnika) {
        String sql = "SELECT * FROM kosarica WHERE tk_idUporabnik = '"+idUporabnika+"' AND prodano = false ";
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        double cena = 0;
        for (Map row : rows) {
            cena += (double)row.get("cena");
        }
        return cena;
    }




}
