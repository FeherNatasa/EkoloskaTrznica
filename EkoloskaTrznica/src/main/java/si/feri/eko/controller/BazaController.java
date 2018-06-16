package si.feri.eko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import si.feri.eko.baza.FileUploadForm;
import si.feri.eko.baza.Izdelek;
import si.feri.eko.baza.Kmetija;
import si.feri.eko.bazaRepositories.IzdelekDao;
import si.feri.eko.bazaRepositories.KmetijaDao;
import si.feri.eko.bazaRepositories.KrajDao;
import si.feri.eko.bazaRepositories.UporabnikDao;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BazaController {

    @Value("${welcome.message}")
    private String message = "Ekohiska";

    @Autowired
    UporabnikDao uporabnikDao;

    @Autowired
    KmetijaDao kmetijaDao;

    @Autowired
    IzdelekDao izdelekDao;

    @Autowired
    KrajDao krajDao;


    @RequestMapping(value = {"/bla" }, method = RequestMethod.GET)
    public String bla(Model model) {
        model.addAttribute("message", this.message);
        return "bla";
    }

    @RequestMapping(value = {"/bla"}, method = RequestMethod.POST)
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
    @RequestMapping(value="/vpis", method=RequestMethod.GET)
    public ModelAndView vpis(@RequestParam(value="error", required = false) String error){
        ModelAndView model = new ModelAndView();

        if(error != null){
            model.addObject("msg", "Uporabniško ime ali geslo je napačno!");
        }


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

        model.setViewName("vpis");

        return model;
    }

    @RequestMapping(value = {"/isci" }, method = RequestMethod.GET)
    public String isci(Model model) {
                model.addAttribute("message", this.message);
                return "isci";
            }


           @RequestMapping(value={"/isci"}, method=RequestMethod.POST)
    public String iscemo(Model model, @RequestParam(value="freeText", required=false)String freeText)
   {
              List<Kmetija> kmetije= kmetijaDao.vseKmetije();
             List<Izdelek> seznam = izdelekDao.vsiIzdelki();

                        for (int i=0; i<seznam.size(); i++)
                    {
                                for(int j=0; j<kmetije.size();j++) {


                                    if (seznam.get(i).getNaziv().equals(freeText)) {
                   int in = seznam.get(i).getTk_idKmetija();
                    int tk = kmetije.get(j).getIdKmetija();
                if(in==tk){

                                   model.addAttribute("najdeno", izdelekDao.getIzdelek(freeText));



                                    }
                            }
                       }
               }
               return "isci";
   }
















/*
    @RequestMapping(value = { "/", "/dodajanjeKmetije" }, method = RequestMethod.GET)
    public String dodajanjeKmetije(Model model) {
        model.addAttribute("message", this.message);
        return "vnosKmetije";
    }

    @RequestMapping(value = {"/", "/dodajanjeKmetije"}, method = RequestMethod.POST)
    public String dodajanjeKmetijee(Model model, @RequestParam(value = "Naziv", required = true) String Naziv,
                                    @RequestParam(value = "Email", required = true) String Email,
                                    @RequestParam(value = "TelefonskaStevilka", required = true) String TelefonskaStevilka,
                                    @RequestParam(value = "Prevzem", required = true) String Prevzem,
                                    @RequestParam(value = "Opis", required = true) String Opis,
                                    @ModelAttribute("uploadForm") FileUploadForm uploadForm) {

        kmetijaDao.dodajKmetijo(Naziv, Email, TelefonskaStevilka, Prevzem, Opis);

        try {
            List<MultipartFile> files = uploadForm.getFiles();
            List<String> fileNames = new ArrayList<String>();
            if (null != files && files.size() > 0) {
                for (MultipartFile multipartFile : files) {
                    String fileName;
                    fileName = multipartFile.getOriginalFilename();
                    fileNames.add(fileName);
                    slikaDao.save(multipartFile, kmetijaDao.getIdKmetije(Naziv));
                }
            }
            model.addAttribute("files", fileNames);
            System.out.print("Slika je bila dodana");

        } catch (NullPointerException e) {
            System.out.println("Slika ni bila dodana");
            e.printStackTrace();
        }
        {
            return "redirect:/vnosi";
        }
    }

    @RequestMapping(value = { "/", "/dodajanjeProduktov" }, method = RequestMethod.GET)
    public String dodajanjeProduktov(Model model) {
        model.addAttribute("message", this.message);
        return "vnosProduktov";
    }

    @RequestMapping(value = {"/", "/dodajanjeProduktov"}, method = RequestMethod.POST)
    public String dodajanjeProduktovv(Model model, @RequestParam(value = "Naziv", required = true) String Naziv,
                                      @RequestParam(value = "Masa", required = true) double Masa,
                                      @RequestParam(value = "Cena", required = true) double Cena,
                                      @ModelAttribute("uploadForm") FileUploadForm uploadForm) {

        izdelekDao.dodajIzdelek(Naziv, Masa, Cena);

        try {
            List<MultipartFile> files = uploadForm.getFiles();
            List<String> fileNames = new ArrayList<String>();
            if (null != files && files.size() > 0) {
                for (MultipartFile multipartFile : files) {
                    String fileName;
                    fileName = multipartFile.getOriginalFilename();
                    fileNames.add(fileName);
                    slikaDao.saveI(multipartFile, izdelekDao.getIdIzdelka(Naziv));
                }
            }
            model.addAttribute("files", fileNames);
            System.out.print("Slika je bila dodana");

        } catch (NullPointerException e) {
            System.out.println("Slika ni bila dodana");
            e.printStackTrace();
        }
        {
            return "redirect:/vnosi";
        }
    }
*/
}
