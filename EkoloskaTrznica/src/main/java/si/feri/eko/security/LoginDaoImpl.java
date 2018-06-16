package si.feri.eko.security;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;


@Repository
public class LoginDaoImpl implements LoginDao {

    NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
    }

    public UserInfo findUserInfo(String UporabniskoIme) {
        String sql = "select UporabniskoIme,Geslo from Uporabnik where UporabniskoIme = :UporabniskoIme";

        List<UserInfo> list = namedParameterJdbcTemplate
                .query(sql, getSqlParameterSource(UporabniskoIme, ""), new UserInfoMapper());

        return list.get(0);

    }

    private static final class UserInfoMapper implements RowMapper{

        public UserInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
            String UporabniskoIme = rs.getString("UporabniskoIme");
            String Geslo = rs.getString("Geslo");
            return new UserInfo(UporabniskoIme, Geslo);
        }

    }

    private SqlParameterSource getSqlParameterSource(String UporabniskoIme, String Geslo){
        MapSqlParameterSource parameterSource = new MapSqlParameterSource();

        parameterSource.addValue("UporabniskoIme", UporabniskoIme);
        parameterSource.addValue("Geslo", Geslo);

        return parameterSource;
    }

    public List getUserRoles(String UporabniskoIme)  {
        String sql = "select role from user_roles where UporabniskoIme = :UporabniskoIme";

        List roles;
        roles = namedParameterJdbcTemplate.queryForList(sql, getSqlParameterSource( UporabniskoIme, ""), String.class);

        return roles;
    }

}
