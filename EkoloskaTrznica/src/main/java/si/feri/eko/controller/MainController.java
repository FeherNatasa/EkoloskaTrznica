package si.feri.eko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import si.feri.eko.baza.FileUploadForm;
import si.feri.eko.baza.Kmetija;
import si.feri.eko.baza.Kosarica;
import si.feri.eko.baza.Uporabnik;
import si.feri.eko.bazaRepositories.*;
import si.feri.eko.security.SignupValidator;
import si.feri.eko.security.UserForm;
import si.feri.eko.security.UserService;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/")
public class MainController {


    @Autowired
    UporabnikDao uporabnikDao;

    @Autowired
    KmetijaDao kmetijaDao;

    @Autowired
    IzdelekDao izdelekDao;

    @Autowired
    NaslovDao naslovDao;

    @Autowired
    KrajDao krajDao;

    @Autowired
    SlikaDao slikaDao;

    @Autowired
    KosaricaDao kosaricaDao;

    @Autowired
    SignupValidator signupValidator;

    @Autowired
    UserService userService;

    // inject via application.properties
    @Value("${welcome.message}")
    private String message = "Hello World";


    @RequestMapping(value = {"/", "/domov" }, method = RequestMethod.GET)
    public String domov(Model model, Principal principal) {
        model.addAttribute("message", this.message);

        if(principal != null) {
            model.addAttribute("username", principal.getName());
        }


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

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

        return "domov";
    }


    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logoutPage(HttpServletRequest req, HttpServletResponse response){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if(auth != null){
            new SecurityContextLogoutHandler().logout(req, response, auth);
        }


        return "redirect:/vpis";
    }

    @RequestMapping(value="/accessDenied", method=RequestMethod.GET)
    public ModelAndView accessDenied(){
        ModelAndView model = new ModelAndView();
        model.setViewName("errors/access_denied");
        return model;
    }


    @RequestMapping(value = {"/onas" }, method = RequestMethod.GET)
    public String oNas(Model model) {
        model.addAttribute("message", this.message);


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

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

        return "onas";
    }

    @RequestMapping(value = {"/kontakt" }, method = RequestMethod.GET)
    public String kontakti(Model model, Principal principal) {

        model.addAttribute("message", message);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String loggedUsername = auth.getName();

        int idPrijavljenegaUporabnika = uporabnikDao.getId(loggedUsername);

        model.addAttribute("msg", idPrijavljenegaUporabnika);


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

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

        return "kontakt";
    }

    @RequestMapping(value = {"/403" }, method = RequestMethod.GET)
    public String la(Model model) {
        model.addAttribute("message", this.message);
        return "403";
    }



    @RequestMapping(value = {"/profil" }, method = RequestMethod.GET)
    public String profil(Model model, Principal principal) {

        if (principal==null)
        {
            return "vpis";
        }
        else {

            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            String loggedUsername = auth.getName();


            int idUporabnika = uporabnikDao.getId(loggedUsername);


            model.addAttribute("message");

            model.addAttribute("ime", uporabnikDao.vrniIme(idUporabnika));
            model.addAttribute("priimek", uporabnikDao.vrniPriimek(idUporabnika));
            model.addAttribute("uporabniskoIme", loggedUsername);
            model.addAttribute("email", uporabnikDao.vrniEmail(idUporabnika));

            //model.addAttribute("kraj", krajDao.vrniKraj(idUporabnika));
           // model.addAttribute("naslov", naslovDao.vrniNaslov(idUporabnika));


            List<Kmetija> kmet = kmetijaDao.vseKmetije();


            for(int i = 0; i < kmet.size(); i++) {
                int tk_idKraj = kmet.get(i).getTk_idKraj();
                System.out.print(tk_idKraj);

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

            return "profil";
        }
    }


    @RequestMapping(value = { "/dodajanjeKmetije" }, method = RequestMethod.GET)
    public String dodajanjeKmetije(Model model) {
        model.addAttribute("message", this.message);


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

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

        return "vnosKmetije";
    }

    @RequestMapping(value = {"/dodajanjeKmetije"}, method = RequestMethod.POST)
    public String dodajanjeKmetijee(@RequestParam(value = "Naziv", required = true) String Naziv,
                                    @RequestParam(value = "Email", required = true) String Email,
                                    @RequestParam(value = "TelefonskaStevilka", required = true) String TelefonskaStevilka,
                                    @RequestParam(value = "Prevzem", required = true) String Prevzem,
                                    @RequestParam(value = "Opis", required = true) String Opis,
                                    @RequestParam(value = "imeUlice", required = true) String imeUlice,
                                    @RequestParam(value = "hisnaStevilka", required = true) String hisnaStevilka,
                                    @RequestParam(value = "postnaStevilka", required = true) int postnaStevilka,
                                    @RequestParam(value = "obcina", required = true) String obcina,
                                    @RequestParam(value = "regija", required = true) String regija,
                                    Model model,  Principal principal,  @ModelAttribute("uploadForm") FileUploadForm uploadForm)
    {
        {
            if (principal==null)
            {
                return  ("redirect:/vpis");
            }
            else {

                int tk_idKraj=0;

                if(krajDao.obstajaKraj(postnaStevilka))
                {
                    tk_idKraj = krajDao.getId(postnaStevilka);
                }

                else {

                    //prvo naredimo kraj, da lahko potem vnesemo njegov tuji ključ v ostale entitete
                    krajDao.dodajKraj(postnaStevilka, obcina, regija);

                    //dobimo ta tuji ključ
                    tk_idKraj = krajDao.getId(postnaStevilka);
                }

                if(naslovDao.obstajaNaslov(imeUlice, hisnaStevilka))
                {

                }
                else
                {
                    //ga dodamo naslovu
                    naslovDao.dodajNaslov(imeUlice, hisnaStevilka, tk_idKraj);
                }

                //za kmetijo rabimo še idUporabnika
                Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                String loggedUsername = auth.getName();

                int tk_idUporabnika = uporabnikDao.getId(loggedUsername);

                Uporabnik uporabnik = uporabnikDao.vrniUporabnika(tk_idUporabnika);

                kmetijaDao.dodajKmetijo(Naziv, Email, TelefonskaStevilka, Prevzem, Opis, tk_idKraj, tk_idUporabnika);
                uporabnikDao.dodajKmeta(uporabnik.getIme(), uporabnik.getPriimek(), uporabnik.getEmail(), uporabnik.getUporabniskoIme(), uporabnik.getGeslo());



               try {
                    List<MultipartFile> files = uploadForm.getFiles();
                    List<String> fileNames = new ArrayList<String>();
                    if (null != files && files.size() > 0) {
                        for (MultipartFile multipartFile : files) {
                            String fileName;
                            fileName = multipartFile.getOriginalFilename();
                            fileNames.add(fileName);
                            slikaDao.save(multipartFile, kmetijaDao.getId(Naziv));
                        }
                    }
                   // model.addAttribute("files", fileNames);
                    System.out.print("Slika je bila dodana");

                } catch (NullPointerException e) {
                    System.out.println("Slika ni bila dodana");
                    e.printStackTrace();
                }


                return  ("redirect:/kmetije");

            }
        }
    }

    @RequestMapping(value ={ "/podrobnosti"}, method = RequestMethod.GET)
    public String Prijava(Model model){


        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String loggedUsername = auth.getName();

        int idUporabnika = uporabnikDao.getId(loggedUsername);

        model.addAttribute("sli", slikaDao.getSlikaByFK(4));
        return "podrobnosti";
    }

    @RequestMapping(value = {"/kmetije" }, method = RequestMethod.GET)
    public String kmetije(Model model) {
        model.addAttribute("message", this.message);

        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++)
        {
            int tk_idKraj = kmet.get(i).getTk_idKraj();


            String regijaKmetije = krajDao.getRegija(tk_idKraj);

            if (regijaKmetije.equals("Koroška")) {

                model.addAttribute("koroska", kmetijaDao.kmetijaRegija(regijaKmetije));


            }
            else if (regijaKmetije.equals("Pomurska")) {

            model.addAttribute("pomurska", kmetijaDao.kmetijaRegija(regijaKmetije));
        }
            else if (regijaKmetije.equals("Osrednjeslovenska")) {

                model.addAttribute("osrednjeslovenska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }

            else if (regijaKmetije.equals("Gorenjska")) {

                model.addAttribute("gorenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }
            else if (regijaKmetije.equals("Dolenjska")) {

                model.addAttribute("dolenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }
            else if (regijaKmetije.equals("Podravska")) {

                model.addAttribute("podravska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }




        }

       return "kmetije";
    }


    @RequestMapping(value = {"/dodajanjeProduktov" }, method = RequestMethod.GET)
    public String dodajanjeProduktov(Model model) {
        model.addAttribute("message", this.message);

        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

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

        return "vnosProduktov";
    }

    @RequestMapping(value = {"/dodajanjeProduktov"}, method = RequestMethod.POST)
    public String dodajanjeProduktovv(@RequestParam(value = "Naziv", required = true) String Naziv,
                                    @RequestParam(value = "Masa", required = true) double Masa,
                                    @RequestParam(value = "Cena", required = true) double Cena,
                                    Model model,  Principal principal
                                      // @ModelAttribute("uploadForm") FileUploadForm uploadForm
                                     )
    {
        {
            if (principal==null)
            {
                return  ("redirect:/vpis");
            }
            else {
                //id uporabnika
                Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                String loggedUsername = auth.getName();

                int idUporabnika = uporabnikDao.getId(loggedUsername);


                if(kmetijaDao.obstaja(idUporabnika) == false)
                {

                }

                else
                {
                    izdelekDao.dodajIzdelek(Naziv, Masa, Cena, kmetijaDao.vrniKmetijo(idUporabnika).getIdKmetija());
                }

                /*try {
                    List<MultipartFile> files = uploadForm.getFiles();
                    List<String> fileNames = new ArrayList<String>();
                    if (null != files && files.size() > 0) {
                        for (MultipartFile multipartFile : files) {
                            String fileName;
                            fileName = multipartFile.getOriginalFilename();
                            fileNames.add(fileName);
                            slikaDao.saveI(multipartFile, izdelekDao.getId(Naziv));
                        }
                    }
                    model.addAttribute("files", fileNames);
                    System.out.print("Slika je bila dodana");

                } catch (NullPointerException e) {
                    System.out.println("Slika ni bila dodana");
                    e.printStackTrace();
                }*/
                return  ("redirect:/kmetije");

            }
        }
    }




    /*************PUSTI TAKO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!****************/

    @RequestMapping(value="/registracija", method=RequestMethod.GET)
    public ModelAndView signup(){
        ModelAndView model = new ModelAndView("registracija");
        model.addObject("userForm", new UserForm());


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

            String regijaKmetije = krajDao.getRegija(tk_idKraj);

            if (regijaKmetije.equals("Koroška")) {

                model.addObject("koroska", kmetijaDao.kmetijaRegija(regijaKmetije));

            } else if (regijaKmetije.equals("Pomurska")) {

                model.addObject("pomurska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Osrednjeslovenska")) {

                model.addObject("osrednjeslovenska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Gorenjska")) {

                model.addObject("gorenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Dolenjska")) {

                model.addObject("dolenjska", kmetijaDao.kmetijaRegija(regijaKmetije));
            } else if (regijaKmetije.equals("Podravska")) {

                model.addObject("podravska", kmetijaDao.kmetijaRegija(regijaKmetije));
            }
        }

        return model;
    }

    @Autowired
    private JavaMailSender sender;

    @RequestMapping(value="/registracija", method=RequestMethod.POST)
    public String register(@ModelAttribute("userForm") UserForm userForm,
                           BindingResult result, RedirectAttributes redirectAttributes){

        signupValidator.validate(userForm, result);

        if(result.hasErrors()){
            return "/registracija";
        } else {
            userService.add(userForm.getIme(), userForm.getPriimek(), userForm.getEmail(), userForm.getUporabniskoIme(), userForm.getGeslo());
            redirectAttributes.addFlashAttribute("msg", "Vaš profil je bil uspešno ustvarjen!");

            MimeMessage message = sender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message);

            try {
                helper.setTo(userForm.getEmail());

                helper.setSubject("Ekohiška - Uspešna registracija");
                helper.setText("Uspešno ste se registrirali na strani Ekološka kmetija.\n\n\n" +
                        "Prijetno nakupovanje vam želimo," +
                        "\n ekipa Ekohiška!");

            } catch (Exception e) {
                e.printStackTrace();
            }
            sender.send(message);


            return "redirect:/vpis";
        }
    }

    @RequestMapping(value = {"/mojaNarocila" }, method = RequestMethod.GET)
    public String mojaNarocila(Model model) {
        model.addAttribute("message", this.message);


        List<Kmetija> kmet = kmetijaDao.vseKmetije();


        for(int i = 0; i < kmet.size(); i++) {
            int tk_idKraj = kmet.get(i).getTk_idKraj();
            System.out.print(tk_idKraj);

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

        List<Kosarica> kosarica = kosaricaDao.kupljeniIzdelki();

        model.addAttribute("kupljeno", kosarica);






        return "mojaNarocila";
    }

}
