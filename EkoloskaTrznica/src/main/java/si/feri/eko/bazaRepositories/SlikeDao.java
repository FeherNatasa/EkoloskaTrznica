package si.feri.eko.bazaRepositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.AbstractLobCreatingPreparedStatementCallback;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.jdbc.support.lob.LobCreator;
import org.springframework.jdbc.support.lob.LobHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import si.feri.eko.baza.Slike;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;

@Component
    public class SlikeDao {
    @Autowired
    static
    JdbcTemplate jdbcTemplate;

    public void Save(MultipartFile f, int tk_idProdukt, int tk_idKmetija, String ime){
        try {
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "INSERT INTO slika (urlSlike,tk_idProdukt,tk_idKmetija) VALUES (?,?,?)",
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            //ps.setLong(1, 1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                            ps.setString(2, ""+ime);
                            ps.setString(3, ""+tk_idProdukt);
                            ps.setString(4, ""+tk_idKmetija);
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }
    public static File convert(MultipartFile file)
    {
        try {
            File convFile = new File(file.getOriginalFilename());
            convFile.createNewFile();
            FileOutputStream fos = new FileOutputStream(convFile);
            fos.write(file.getBytes());
            fos.close();
            return convFile;
        }
        catch(IOException e){
            System.out.println(e);
        }
        return null;
    }
    public List<Slike> vrniSlike(int id) {
        String sql = "SELECT * FROM slika WHERE tk_idProdukt=" + id;
        List<Slike> ret = new ArrayList<Slike>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map<String, Object> row : rows) {
            byte[] blob = (byte[]) row.get("urlSlike");
            String retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);

            ret.add(new Slike(retrieveBlobAsString));
        }
        return ret;
    }
    public boolean obstajaSlika(int id){
        String sql = "SELECT * FROM slika WHERE tk_idProdukt IS null AND tk_idKmetija=" + id;
        List<Slike> ret = new ArrayList<Slike>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        if(rows.isEmpty()){
            return false;
        }
        return true;
    }
    public Slike vrniSliko(int id){
        String sql = "SELECT URLSlike FROM slika WHERE tk_idProdukt IS null AND tk_idKmetija="+id;
        Map<String, Object> row=jdbcTemplate.queryForList(sql).get(0);
        byte[] blob = (byte[]) row.get("urlSlike");
        String retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);
        return (new Slike(retrieveBlobAsString));
    }
    public void saveA(MultipartFile f, int tk_idKmetija){
        try {
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "INSERT INTO slika (urlSlike,tk_idKmetija) VALUES (?,?,?)",
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            //ps.setLong(1, 1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                            ps.setString(2, "nekaj");
                            ps.setString(3, ""+tk_idKmetija);
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }
    public void saveUpdate(MultipartFile f, int tk_idProdukt){
        try {
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "UPDATE  slika SET urlSlike=? WHERE tk_idProdukt IS NULL AND tk_idKmetija="+tk_idProdukt,
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            //ps.setLong(1, 1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }

    public static void saveKmetija(MultipartFile f, String urlSlike){
        try {
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "INSERT INTO slika (urlSlike) VALUES (?)",
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            ps.setLong(1, 1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                            ps.setString(2, "nekaj");
                            ps.setString(3, ""+urlSlike);
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }

    public static void saveKmetija2(MultipartFile f, String urlSlike, int tk_idKmetija, int tk_idIzdelek){
        try {
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "INSERT INTO slike (idSLika,urlSlike, tk_idKmetija, tk_idIzdelek) VALUES (?,?,?,?)",
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            //ps.setLong(1, 1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                            ps.setString(2, "nekaj");
                            ps.setString(3, ""+urlSlike);
                            ps.setString(4, ""+tk_idIzdelek);
                            ps.setString(5, ""+tk_idKmetija);
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }

}
