package si.feri.eko.bazaRepositories;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public class TipUporabnikaDao
{

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int dodajTipUporabnika(boolean kmetija)
    {
        String sql = "INSERT into tipUporabnika(Kmetija) values(?)";
        return jdbcTemplate.update(sql, new Object[]{kmetija});
    }

    public int posodobiTipUporabnika(boolean kmetija, int id)
    {
        String sql="UPDATE tipUporabnika SET Kmetija=? WHERE idTipUporabnika=?";
        return  jdbcTemplate.update(sql, new Object[]{kmetija, id});
    }

}
