package si.feri.eko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import si.feri.eko.bazaRepositories.IzdelekDao;
import si.feri.eko.bazaRepositories.KmetijaDao;
import si.feri.eko.bazaRepositories.UporabnikDao;

import java.util.List;

@Controller
public class BazaController {

    @Value("${welcome.message}")
    private String message = "Hello World";


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

    @RequestMapping(value = { "/", "/registracija" }, method = RequestMethod.GET)
    public String registracija(Model model) {
        model.addAttribute("message", this.message);
        return "registracija";
    }

    @RequestMapping(value = {"/", "/registracija"}, method = RequestMethod.POST)
    public String dodajUporabnika(@RequestParam(value = "Ime", required = true) String Ime,
                               @RequestParam(value = "Priimek", required = true) String Priimek,
                               @RequestParam(value = "Email", required = true) String Email,
                               @RequestParam(value = "UporabniskoIme", required = true) String UporabniskoIme,
                               @RequestParam(value = "Geslo", required = true) String Geslo) {
        {

           uporabnikDao.dodajUporabnika(Ime, Priimek, Email, UporabniskoIme, Geslo);

            return "redirect:/vnosi";
        }
    }


    @RequestMapping(value = { "/", "/bla" }, method = RequestMethod.GET)
    public String bla(Model model) {
        model.addAttribute("message", this.message);
        return "bla";
    }

    @RequestMapping(value = {"/", "/bla"}, method = RequestMethod.POST)
    public String dodajUporabnikaa(@RequestParam(value = "Ime", required = true) String Ime,
                                  @RequestParam(value = "Priimek", required = true) String Priimek,
                                  @RequestParam(value = "Email", required = true) String Email,
                                  @RequestParam(value = "UporabniskoIme", required = true) String UporabniskoIme,
                                  @RequestParam(value = "Geslo", required = true) String Geslo) {
        {

            uporabnikDao.dodajUporabnika(Ime, Priimek, Email, UporabniskoIme, Geslo);

            return "redirect:/vnosi";
        }
    }

    @RequestMapping(value = { "/", "/dodajanjeKmetije" }, method = RequestMethod.GET)
    public String dodajanjeKmetije(Model model) {
        model.addAttribute("message", this.message);
        return "vnosKmetije";
    }

     @RequestMapping(value = {"/", "/dodajanjeKmetije"}, method = RequestMethod.POST)
    public String dodajanjeKmetijee(@RequestParam(value = "Naziv", required = true) String Naziv,
                                   @RequestParam(value = "Email", required = true) String Email,
                                   @RequestParam(value = "TelefonskaStevilka", required = true) String TelefonskaStevilka,
                                   @RequestParam(value = "Prevzem", required = true) String Prevzem,
                                   @RequestParam(value = "Opis", required = true) String Opis,
                                   @RequestParam(value = "imeUlice", required = true) String imeUlice,
                                   @RequestParam(value = "hisnaStevilka", required = true) String hisnaStevilka,
                                    @RequestParam(value = "postnaStevilka", required = true) int postnaStevilka,
                                    @RequestParam(value = "obcina", required = true) String obcina,
                                    @RequestParam(value = "regija", required = true) String regija)
    {
        {

            kmetijaDao.dodajKmetijo(Naziv, Email, TelefonskaStevilka, Prevzem, Opis);
            naslovDao.dodajNaslov(imeUlice, hisnaStevilka);
            krajDao.dodajKraj(postnaStevilka, obcina, regija);
            return "redirect:/vnosi";
        }
    }
    @RequestMapping(value = { "/", "/dodajanjeProduktov" }, method = RequestMethod.GET)
    public String dodajanjeProduktov(Model model) {
        model.addAttribute("message", this.message);
        return "vnosProduktov";
    }

    @RequestMapping(value = {"/", "/dodajanjeProduktov"}, method = RequestMethod.POST)
    public String dodajanjeProduktovv(@RequestParam(value = "Naziv", required = true) String Naziv,
                                    @RequestParam(value = "Masa", required = true) double Masa,
                                    @RequestParam(value = "Cena", required = true) double Cena) {
        {

            izdelekDao.dodajIzdelek(Naziv, Masa, Cena);

            return "redirect:/vnosi";
        }
    }

    @RequestMapping(value = {"/vnosi"}, method = RequestMethod.GET)
    public String vnosi(Model model) {
        model.addAttribute("Uporabniki", uporabnikDao.vsiUporabniki());
        model.addAttribute("Kmetije", kmetijaDao.vseKmetije());
        model.addAttribute("Izdelki", izdelekDao.vsiIzdelki());
        return "vnosi";
    }

    @RequestMapping(value = { "/", "/vpis" }, method = RequestMethod.GET)
    public String vpis(Model model) {
        model.addAttribute("message", this.message);
        return "vpis";
    }

    @RequestMapping(value = {"/", "/vpis"}, method = RequestMethod.POST)
    public String vpiss(@RequestParam(value = "UporabniskoIme", required = true) String UporabniskoIme,
                        @RequestParam(value = "Geslo", required = true) String Geslo) {
        {
            boolean fu = uporabnikDao.obstaja(UporabniskoIme, Geslo);

            if(fu==true)
            {
                return "redirect:/profil";
            }
            else
            {
                return "redirect:/vpis";
            }
        }
    }
    @RequestMapping(value = { "/", "/dodajanjeSlikeK" }, method = RequestMethod.GET)
    public String dodajanjeSlikeKmetije(Model model) {
        model.addAttribute("message", this.message);
        return "dodajSlikoKmetije";
    }

    
      @RequestMapping(value = {"/kmetije"}, method = RequestMethod.GET)
    public String kmetijee(Model model) {
        model.addAttribute("KmetijeP", kmetijaDao.vseKmetije());
       model.addAttribute("KrajP", krajDao.vsiKraji());
       model.addAttribute("Kraji", krajDao.vsiKraji());
       model.addAttribute("Regije", krajDao.getRegije());


        return "kmetije";
    }
    
    @RequestMapping(value = {"/", "/dodajanjeSlikeK"}, method = RequestMethod.POST)
    public String dodajanjeSlikeKmetije(
                                        @ModelAttribute("uploadForm") FileUploadForm uploadForm, Model map) {
        String urlSlike="";
        {
            try{
                List<MultipartFile> files = uploadForm.getFiles();
                List<String> fileNames = new ArrayList<String>();
                if(null != files && files.size() > 0) {
                    for (MultipartFile multipartFile : files) {
                        String fileName;
                        fileName   = multipartFile.getOriginalFilename();
                        fileNames.add(fileName);
                        SlikeDao.saveKmetija(multipartFile, urlSlike);
                    }
                }
                map.addAttribute("files", fileNames);

            }catch (NullPointerException e){
                System.out.println("Nobena slika ni bila dodana");
            }

            return "redirect:/vnosi";
        }
    }
}
