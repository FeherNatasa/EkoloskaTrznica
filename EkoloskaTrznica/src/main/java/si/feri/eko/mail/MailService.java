package si.feri.eko.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import si.feri.eko.baza.Uporabnik;
import si.feri.eko.security.UserInfo;

@Service
public class MailService {

    private JavaMailSender javaMailSender;

   public MailService(JavaMailSender javaMailSender){
       this.javaMailSender = javaMailSender;
   }

   public void sendNotification(Uporabnik uporabnik)  throws MailException {
       //pošiljanje emaila
       SimpleMailMessage mail = new SimpleMailMessage();
        mail.setTo(uporabnik.getEmail());
        mail.setFrom("ekohiska@gmail.com");
        mail.setSubject("Vaš nakup je potrjen");

        //Kar bo v mailu
        mail.setText("Dragi/a" + uporabnik.getIme() + " " + uporabnik.getPriimek() + "!" +
        "S tem mailom vas obveščamo, da ste uspešno zaključili nakup v naši spletni trgovini Ekohiška!" +
        "Iskreno se vam zahvaljujemo za zaupaje in da ste paketek sveže zelenjave in sadlja naročili ravno pri nas." +
        "Naročen paket lahko pričakujete " );

        javaMailSender.send(mail);

   }

}
