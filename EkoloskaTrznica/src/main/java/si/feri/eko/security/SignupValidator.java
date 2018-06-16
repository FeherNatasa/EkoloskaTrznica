package si.feri.eko.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class SignupValidator implements Validator {

    @Autowired
    UserService userService;

    public boolean supports(Class clazz) {
        return UserForm.class.isAssignableFrom(clazz);
    }

    public void validate(Object target, Errors errors) {
        UserForm user = (UserForm) target;

        ValidationUtils.rejectIfEmpty(errors, "UporabniskoIme", "notEmpty.UporabniskoIme");
        ValidationUtils.rejectIfEmpty(errors, "Geslo", "notEmpty.Geslo");
        ValidationUtils.rejectIfEmpty(errors, "PotrdiGeslo", "notEmpty.PotrdiGeslo");

        if(user.getGeslo() != null && user.getPotrdiGeslo() != null &&
                !user.getGeslo().equals(user.getPotrdiGeslo())){
            errors.rejectValue("Geslo", "notMatch.PotrdiGeslo");
        }

        if(userService.userExists(user.getUporabniskoIme())){
            errors.rejectValue("UporabniskoIme", "exists.UporabniskoIme");
        }
    }

}