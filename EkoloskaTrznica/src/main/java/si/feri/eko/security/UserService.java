package si.feri.eko.security;


import java.util.List;

public interface UserService {

    List list();

    UserInfo findUserByUsername(String UporabniskoIme);

    void update(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo);

    void add(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo);

    boolean userExists(String UporabniskoIme);
}
