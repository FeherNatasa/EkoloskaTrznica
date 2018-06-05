package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import si.feri.eko.baza.Izdelek;
import si.feri.eko.baza.Kmetija;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
		return jdbcTemplate.update(sql, new Object[]{naziv, masa, cena});
	}
	
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
	
	public boolean obstaja(String vsebina)
	{
		String sql = "SELECT idKomentar FROM komentar WHERE vsebina= '" + vsebina + "'");
		int id=Integer.parseInt((String)jdbcTemplate.queryForObject(sql, String.class));
		return id;
	}
	
	public List<Komentar> vsiKomentarji(){
		String sql = "SELECT * FROM komentar";
		List<Izdelek> ret = new ArrayList<Izdelek>();
		List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
		for (Map row: rows){
			int id = (int)row.get("idIzdelek");
			String vsebina = (String)row.get("vsebina");
			ret.add(new Komentar(vsebina));
		}
		return ret;
	}
}
