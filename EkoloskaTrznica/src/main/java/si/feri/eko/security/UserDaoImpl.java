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
public class UserDaoImpl implements UserDao {

    NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
    }

    private SqlParameterSource getSqlParameterSource(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo){
        MapSqlParameterSource parameterSource = new MapSqlParameterSource();
        if(Ime != null){
            parameterSource.addValue("Ime", Ime);
        }
        if(Priimek != null){
            parameterSource.addValue("Priimek", Priimek);
        }
        if(Email != null){
        parameterSource.addValue("Email", Email);
    }
        if(UporabniskoIme != null){
        parameterSource.addValue("UporabniskoIme", UporabniskoIme);
    }
        if(Geslo != null){
        parameterSource.addValue("Geslo", Geslo);
    }

        return parameterSource;
}

    private static final class UserMapper implements RowMapper{

        public UserInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
            UserInfo user = new UserInfo();

            user.setUporabniskoIme(rs.getString("UporabniskoIme"));
            user.setGeslo(rs.getString("Geslo"));

            return user;
        }

    }

    @Override
    public List<UserInfo> list() {
        String sql = "select UporabniskoIme from Uporabnik";

        List<UserInfo> list = namedParameterJdbcTemplate.query(sql, getSqlParameterSource(null, null, null, null, ""), new UserMapper());

        return list;
    }

    public UserInfo findUserByUsername(String UporabniskoIme) {
        String sql = "select UporabniskoIme from Uporabnik where UporabniskoIme = :UporabniskoIme";

        List<UserInfo> list = namedParameterJdbcTemplate
                .query(sql, getSqlParameterSource(null, null, null, UporabniskoIme, null), new UserMapper());

        return list.get(0);
    }

    public void update(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo) {
        String sql = "update Uporabnik set Geslo = :Geslo, Ime = :Ime, Priimek = :Priimek, Email = :Email where UporabniskoIme = :UporabniskoIme";

        namedParameterJdbcTemplate.update(sql, getSqlParameterSource(Ime, Priimek, Email, UporabniskoIme, Geslo));

    }

    public void add(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo) {
        String sql = "insert into Uporabnik (Ime, Priimek, Email, UporabniskoIme, Geslo) values(:Ime, :Priimek, :Email, :UporabniskoIme, :Geslo)";
        namedParameterJdbcTemplate.update(sql, getSqlParameterSource(Ime, Priimek, Email, UporabniskoIme, Geslo));

        sql = "insert into user_roles(UporabniskoIme, role) values(:UporabniskoIme, 'ROLE_USER')";
        namedParameterJdbcTemplate.update(sql, getSqlParameterSource(Ime, Priimek, Email, UporabniskoIme, Geslo));
    }

    public boolean userExists(String UporabniskoIme) {
        String sql = "select * from Uporabnik where UporabniskoIme = :UporabniskoIme";

        List list = namedParameterJdbcTemplate
                .query(sql, getSqlParameterSource(null, null, null, UporabniskoIme, null), new UserMapper());

        if(list.size() > 0){
            return true;
        }

        return false;
    }

}