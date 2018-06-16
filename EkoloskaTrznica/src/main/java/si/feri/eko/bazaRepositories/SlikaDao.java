package si.feri.eko.bazaRepositories;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.AbstractLobCreatingPreparedStatementCallback;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.jdbc.support.lob.LobCreator;
import org.springframework.jdbc.support.lob.LobHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import si.feri.eko.baza.SlikaI;
import si.feri.eko.baza.SlikaK;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Map;

@Component
public class SlikaDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public void save(MultipartFile f, int tk_idKmetija){
        try{
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "INSERT INTO slikak (datoteka, tk_idKmetija) VALUES (?,?)",
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            //ps.setLong(1,1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                            ps.setString(2, ""+tk_idKmetija);
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }
    public File convert(MultipartFile file)
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

    public List<SlikaK> getSlikaByFK(int id){
        String sql = "SELECT * FROM slikak WHERE tk_idKmetija = " + id;
        List<SlikaK> ret = new ArrayList<SlikaK>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map<String, Object> row : rows){
            byte[] blob = (byte[]) row.get("datoteka");
            String retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);

            ret.add(new SlikaK(retrieveBlobAsString));
        }
        return ret;
    }

    public String getIDSlike(int tk_idKmetija) {
        String retrieveBlobAsString="";
        String sql = "SELECT * FROM slikak WHERE tk_idKmetija ="+tk_idKmetija+" GROUP BY tk_idKmetija;";
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map<String, Object> row : rows) {
            byte[] blob = (byte[]) row.get("datoteka");
            retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);
        }
        return retrieveBlobAsString;
    }

    public SlikaK vrniSlikoKmetije(int id){
        String sql = "SELECT URLSlike FROM slikak WHERE tk_idKmetija="+id;
        Map<String, Object> row=jdbcTemplate.queryForList(sql).get(0);
        byte[] blob = (byte[]) row.get("urlSlike");
        String retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);
        return (new SlikaK(retrieveBlobAsString));
    }

    public boolean obstajaSlikaKmetije(int id){
        String sql = "SELECT * FROM slikak WHERE tk_idKmetija IS null AND Datoteka=" + id;
        List<SlikaK> ret = new ArrayList<SlikaK>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        if(rows.isEmpty()){
            return false;
        }
        return true;
    }

    //

    public List<SlikaI> getSlikaIByFK(int id){
        String sql = "SELECT * FROM slikai WHERE tk_idIzdelek = " + id;
        List<SlikaI> ret = new ArrayList<SlikaI>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map<String, Object> row : rows){
            byte[] blob = (byte[]) row.get("datoteka");
            String retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);

            ret.add(new SlikaI(retrieveBlobAsString));
        }
        return ret;
    }

    public List<SlikaI> vrniSlikoIzdelka(){
        String sql = "SELECT tk_idIzdelek, Datoteka from slikai where tk_idIzdelek in (select id_izdelek from izdelek) group by tk_idIzdelek;";
        List<SlikaI> ret = new ArrayList<SlikaI>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map<String, Object> row : rows){
            byte[]blob = (byte[]) row.get("datoteka");
            String retrieveBlobAsString = Base64.getEncoder().encodeToString(blob);
            int tk_idKmetija=(int)row.get("tk_idKmetija");

            ret.add(new SlikaI(retrieveBlobAsString, tk_idKmetija));
        }
        return ret;
    }

    public void saveI(MultipartFile f, int tk_idIzdelek){
        try{
            LobHandler lobhandler = new DefaultLobHandler();
            final File blobIn = convert(f);
            final InputStream blobIs = new FileInputStream(blobIn);
            jdbcTemplate.execute(
                    "INSERT INTO slikai (Datoteka2, tk_idIzdelek) VALUES (?,?)",
                    new AbstractLobCreatingPreparedStatementCallback(lobhandler) {
                        protected void setValues(PreparedStatement ps, LobCreator lobCreator)
                                throws SQLException {
                            //ps.setLong(1,1L);
                            lobCreator.setBlobAsBinaryStream(ps, 1, blobIs, (int) blobIn.length());
                            ps.setString(2, ""+tk_idIzdelek);
                        }
                    }
            );
            blobIs.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }

    public boolean obstajaSlikaIzdelka(int id){
        String sql = "SELECT * FROM slikai WHERE tk_idIzdelek IS null AND Datoteka2=" + id;
        List<SlikaI> ret = new ArrayList<SlikaI>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        if(rows.isEmpty()){
            return false;
        }
        return true;
    }


}