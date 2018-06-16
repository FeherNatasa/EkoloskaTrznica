package si.feri.eko.security;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    UserDao userDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public List list() {
        return userDao.list();
    }

    public UserInfo findUserByUsername(String UporabniskoIme) {
        return userDao.findUserByUsername(UporabniskoIme);
    }

    public void update(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo) {
        userDao.update(Ime, Priimek, Email, UporabniskoIme, passwordEncoder.encode(Geslo));
    }

    public void add(String Ime, String Priimek, String Email, String UporabniskoIme, String Geslo) {
        userDao.add(Ime, Priimek, Email, UporabniskoIme, passwordEncoder.encode(Geslo));
    }

    public boolean userExists(String UporabniskoIme) {
        return userDao.userExists(UporabniskoIme);
    }

}