package si.feri.eko.security;


import java.util.List;


public interface LoginDao {

    UserInfo findUserInfo(String UporabniskoIme);

    List getUserRoles(String UporabniskoIme);
}