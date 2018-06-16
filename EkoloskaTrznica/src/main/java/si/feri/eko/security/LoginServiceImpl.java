package si.feri.eko.security;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class LoginServiceImpl implements UserDetailsService {

    LoginDao loginDao;

    @Autowired
    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

    public UserDetails loadUserByUsername(String UporabniskoIme) throws UsernameNotFoundException {
        UserInfo userInfo = loginDao.findUserInfo(UporabniskoIme);

        if(userInfo == null){
            throw new UsernameNotFoundException("Uporabniško ime ne obstaja v bazi");
        }

        List<String > roles = loginDao.getUserRoles(UporabniskoIme);

        List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();

        if(roles != null){
            for(Object role : roles){
                GrantedAuthority authority = new SimpleGrantedAuthority((String) role);
                grantList.add(authority);
            }
        }

        UserDetails userDetails = new User(userInfo.getUporabniskoIme(), userInfo.getGeslo(), grantList);

        return userDetails;
    }

}