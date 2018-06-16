package si.feri.eko.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import si.feri.eko.baza.*;
import si.feri.eko.bazaRepositories.*;
import si.feri.eko.mail.MailService;

import javax.mail.internet.MimeMessage;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;


@Controller
public class KosaricaController {

    @Autowired
    KmetijaDao kmetijaDao;

    @Autowired
    IzdelekDao izdelekDao;

    @Autowired
    KosaricaDao kosaricaDao;

    @Autowired
    UporabnikDao uporabnikDao;

    @Autowired
    KomentarDao komentarDao;

    @Autowired
    OcenaDao ocenaDao;

    @Autowired
    SlikaDao slikaDao;

    @Autowired
    KrajDao krajDao;

    @Autowired
    private JavaMailSender sender;




    @RequestMapping(value = {"/kmetija/{id}" }, method = RequestMethod.GET)
    public String kmetija1(@PathVariable("id") int id, Model model) {
        model.addAttribute("message");


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int j = 0; j < kmet.size(); j++) {
            int tk_idKraj = kmet.get(j).getTk_idKraj();


            String regijaKmetije = krajDao.getRegija(tk_idKraj);

            if (regijaKmetije.equals("Koroška")) {

                model.addAttribute("koroska", kmetijaDao.kmetijaRegija(regijaKmetije));


            } else if (regijaKmetije.equals("Pomurska")) {

                model.addAttribute("pomurska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Osrednjeslovenska")) {

                model.addAttribute("osrednjeslovenska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Gorenjska")) {

                model.addAttribute("gorenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Dolenjska")) {

                model.addAttribute("dolenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Podravska")) {

                model.addAttribute("podravska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }

        }
            model.addAttribute("kmetijaNaziv", kmetijaDao.vrniNazivKmetije(id));
            model.addAttribute("kmetijaOpis", kmetijaDao.vrniOpisKmetije(id));
            //model.addAttribute("kmetijaNaslov", kmetijaDao.vrniNaslovKmetije(id));
            model.addAttribute("kmetijaTelefonskaStevilka", kmetijaDao.vrniTelKmetije(id));
            model.addAttribute("kmetijaPrevzem", kmetijaDao.vrniPrevzemKmetije(id));

            model.addAttribute("komentarKmetije", komentarDao.vsiKomentarjikmetije(id));

            model.addAttribute("izdelkiKmetije", izdelekDao.vsiIzdelkiKmetije(id));
            model.addAttribute("sli", slikaDao.getSlikaByFK(id));


        /*int in = izdelekDao.getIdIzdelka(id);

        model.addAttribute("slika", slikaDao.getSlikaIByFK(in));*/ //id izdelka


            /*model.addAttribute("Ocena", ocenaDao.vseOcene());
            //model.addAttribute("Komentar", komentarDao.vsiKomentarji());

            int st1 = 0, st2 = 0, st3 = 0, st4 = 0, st5 = 0;
            double povprecje = 1;
            int vsiGlasovi = 1;
            ArrayList<Integer> seznam = ocenaDao.getOcene();
            System.out.print(seznam);
            for (int i = 0; i < seznam.size(); i++) {
                System.out.println(seznam.get(i));
                if (seznam.get(i) == 1) {
                    st1++;
                } else if (seznam.get(i) == 2) {
                    st2++;
                } else if (seznam.get(i) == 3) {
                    st3++;
                } else if (seznam.get(i) == 4) {
                    st4++;
                } else if (seznam.get(i) == 5) {
                    st5++;
                }
            }*/


            /*vsiGlasovi = st1 + st2 + st3 + st4 + st5;

            if(vsiGlasovi==0)
            {

            }
            else {
                povprecje = (1 * st1 + 2 * st2 + 3 * st3 + 4 * st4 + 5 * st5) / (vsiGlasovi);
            }

            model.addAttribute("povprecje", povprecje);*/
            return "kmetija1";


    }

    @RequestMapping(value={"/kmetija/{id}"}, method=RequestMethod.POST)
    public String kmetija11(@PathVariable("id") int id, @RequestParam(value = "rating", required = false) Integer ocena,
                            @RequestParam(value = "vsebina", required = false) String vsebina, Model model)
    {

        model.addAttribute("komentarKmetije", komentarDao.vsiKomentarjikmetije(id));

        if (vsebina != null){
            komentarDao.dodajKomentar(vsebina);

        }
        else {
            ocenaDao.dodajOceno(ocena);
        }

        return "redirect: /kmetija/{id}";

    }


    @RequestMapping(value = {"/kosarica/{id}" }, method = RequestMethod.GET)
    public String kosarica (@PathVariable("id") int id, Model model) {
        model.addAttribute("message");


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();


            String regijaKmetije = krajDao.getRegija(tk_idKraj);

            if (regijaKmetije.equals("Koroška")) {

                model.addAttribute("koroska", kmetijaDao.kmetijaRegija(regijaKmetije));


            } else if (regijaKmetije.equals("Pomurska")) {

                model.addAttribute("pomurska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Osrednjeslovenska")) {

                model.addAttribute("osrednjeslovenska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Gorenjska")) {

                model.addAttribute("gorenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Dolenjska")) {

                model.addAttribute("dolenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Podravska")) {

                model.addAttribute("podravska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }

        }

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String loggedUsername = auth.getName();

        int idUporabnika = uporabnikDao.getId(loggedUsername);

        Izdelek izdelek = izdelekDao.vrniIzdelek(id);


        if(kosaricaDao.obstaja(izdelek.getIdIzdelka()) == false)
        {

           kosaricaDao.dodajKosarico(izdelek.getNaziv(), izdelek.getMasa(), izdelek.getCena(), 1,  false, idUporabnika, izdelek.getIdIzdelka());
        }
        else {

            Kosarica kosarica = kosaricaDao.vrniKosarico(idUporabnika);

            double cena = kosarica.getCena();

            cena = cena + izdelek.getCena();

            kosarica.setCena(cena);
            kosaricaDao.updateKosaricoCena(kosarica.getId(), kosarica.getNaziv(), kosarica.getMasa(), kosarica.getCena(), kosarica.getKolicina(), kosarica.isProdano(), kosarica.getTk_idUporabnik(), kosarica.getTk_idIzdelek());

            int kolicina = kosarica.getKolicina();
            kolicina = kolicina + 1;

            kosarica.setKolicina(kolicina);
            kosaricaDao.updateKosaricoKolicina(kosarica.getId(), kosarica.getNaziv(), kosarica.getMasa(), kosarica.getCena(), kosarica.getKolicina(), kosarica.isProdano(), kosarica.getTk_idUporabnik(), kosarica.getTk_idIzdelek());
        }
            model.addAttribute("izdelki", kosaricaDao.vseVKosarici(idUporabnika));


            model.addAttribute("cenaKos", kosaricaDao.cenaKosarice(idUporabnika));

        return "kosarica";
    }

    @RequestMapping(value = {"/kosarica/odstrani/{id}" }, method = RequestMethod.GET)
    public String odstrani (@PathVariable("id") int idIzbrisi, Model model, Principal principal) {
        model.addAttribute("message");


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();


            String regijaKmetije = krajDao.getRegija(tk_idKraj);

            if (regijaKmetije.equals("Koroška")) {

                model.addAttribute("koroska", kmetijaDao.kmetijaRegija(regijaKmetije));


            } else if (regijaKmetije.equals("Pomurska")) {

                model.addAttribute("pomurska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Osrednjeslovenska")) {

                model.addAttribute("osrednjeslovenska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Gorenjska")) {

                model.addAttribute("gorenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Dolenjska")) {

                model.addAttribute("dolenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Podravska")) {

                model.addAttribute("podravska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }

        }

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String loggedUsername = auth.getName();

        int idUporabnika = uporabnikDao.getId(loggedUsername);

        Kosarica kosarica = kosaricaDao.vrniKosaricoBrisi(idIzbrisi);

        Izdelek izdelek = izdelekDao.vrniIzdelek(kosarica.getTk_idIzdelek());

        double cena = 0;

       if(kosarica.getKolicina() <= 1)
       {
           kosaricaDao.izbrisiKosarico(idIzbrisi);
       }

       else
       {
           cena = kosarica.getCena();
           cena = cena - izdelek.getCena();

           kosarica.setCena(cena);
           kosaricaDao.updateKosaricoCena(kosarica.getId(), kosarica.getNaziv(), kosarica.getMasa(), kosarica.getCena(), kosarica.getKolicina(), kosarica.isProdano(), kosarica.getTk_idUporabnik(), kosarica.getTk_idIzdelek());

           int kolicina = kosarica.getKolicina();
           kolicina = kolicina - 1;

           kosarica.setKolicina(kolicina);
           kosaricaDao.updateKosaricoKolicina(kosarica.getId(), kosarica.getNaziv(), kosarica.getMasa(), kosarica.getCena(), kosarica.getKolicina(), kosarica.isProdano(), kosarica.getTk_idUporabnik(), kosarica.getTk_idIzdelek());
       }

       model.addAttribute("izdelki", kosaricaDao.vseVKosarici(idUporabnika));

       model.addAttribute("cenaVsega", cena);



        return "kosarica";
    }

    @RequestMapping(value = {"/kosarica/sprazni" }, method = RequestMethod.GET)
    public String sprazni (Model model, Principal principal) {
        model.addAttribute("message");


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();


            String regijaKmetije = krajDao.getRegija(tk_idKraj);

            if (regijaKmetije.equals("Koroška")) {

                model.addAttribute("koroska", kmetijaDao.kmetijaRegija(regijaKmetije));


            } else if (regijaKmetije.equals("Pomurska")) {

                model.addAttribute("pomurska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Osrednjeslovenska")) {

                model.addAttribute("osrednjeslovenska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Gorenjska")) {

                model.addAttribute("gorenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Dolenjska")) {

                model.addAttribute("dolenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Podravska")) {

                model.addAttribute("podravska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }

        }

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String loggedUsername = auth.getName();

        int idUporabnika = uporabnikDao.getId(loggedUsername);

        Uporabnik uporabnik = uporabnikDao.vrniUporabnika(idUporabnika);

        List<Kosarica> kosarica = kosaricaDao.vseVKosarici(idUporabnika);


        for(int i = 0; i < kosarica.size(); i++)
        {
            kosarica.get(i).setProdano(true);
            kosaricaDao.updateKosaricoProdano(kosarica.get(i).getId(), kosarica.get(i).getNaziv(), kosarica.get(i).getMasa(), kosarica.get(i).getCena(), kosarica.get(i).getKolicina(), kosarica.get(i).isProdano(), kosarica.get(i).getTk_idUporabnik(), kosarica.get(i).getTk_idIzdelek());

        }

        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);

        try {
            helper.setTo(uporabnik.getEmail());

            helper.setSubject("Ekohiška - Nakup");
            helper.setText("\nPozdravljeni!\n" +
                    "S tem mailom potrjujemo, da ste uspešno zaključili vaš nakup.\n\n" +
                    "\n Zahvaljujemo se vam za zaupanje, da ste se odločili in izdelke kupili ravno pri nas." +
                    "\nUpamo, da se znova kmalu odločite in nas obiščete." +
                    "\n\n\nPrijetno nakupovanje še naprej vam želimo," +
                    "\n ekipa Ekohiška!");

        } catch (Exception e) {
            e.printStackTrace();
        }
        sender.send(message);


        return "kosarica";
    }



    @RequestMapping(value = {"/kmetija/update/{id}" }, method = RequestMethod.GET)
    public String update (@PathVariable("id") int idIzbrisi, Model model, Principal principal) {
        model.addAttribute("message");

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String loggedUsername = auth.getName();

        int idKmetije = uporabnikDao.getId(loggedUsername);

        List<Kmetija> kmetija = kmetijaDao.vseVKmetiji(idKmetije);

        kmetijaDao.updateKmetija(kmetija.get(idKmetije).getIdKmetija(), kmetija.get(idKmetije).getNaziv(), kmetija.get(idKmetije).getEmail(), kmetija.get(idKmetije).getTelefonskaStevilka(), kmetija.get(idKmetije).getPrevzem(), kmetija.get(idKmetije).getOpis(), kmetija.get(idKmetije).getTk_idUporabnik(), kmetija.get(idKmetije).getTk_idKraj());


        return "profil";
    }
}
