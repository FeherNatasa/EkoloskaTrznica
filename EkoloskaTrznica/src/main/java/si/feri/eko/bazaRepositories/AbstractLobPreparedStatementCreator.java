package si.feri.eko.bazaRepositories;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.lob.LobCreator;
import org.springframework.jdbc.support.lob.LobHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public abstract class AbstractLobPreparedStatementCreator implements PreparedStatementCreator {
    private final LobHandler lobHandler;
    private final String sql;
    private final String keyColumn;

    public AbstractLobPreparedStatementCreator(LobHandler lobHandler, String sql, String keyColumn) {
        this.lobHandler = lobHandler;
        this.sql = sql;
        this.keyColumn = keyColumn;
    }
    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
        PreparedStatement ps = con.prepareStatement(sql, new String[] { keyColumn });
        LobCreator lobCreator = this.lobHandler.getLobCreator();
        setValues(ps, lobCreator);
        return ps;
    }
    protected abstract void setValues(PreparedStatement ps, LobCreator lobCreator) throws SQLException, DataAccessException;
}

