package si.feri.eko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import si.feri.eko.bazaRepositories.UporabnikDao;

@Controller
public class BazaController {

    @Value("${welcome.message}")
    private String message = "Hello World";

    @Autowired
    UporabnikDao uporabnikDao;

    @RequestMapping(value = {"/", "/registracija"}, method = RequestMethod.POST)
    public String dodajOsebo(@RequestParam(value = "Ime", required = true) String Ime,
                               @RequestParam(value = "Priimek", required = true) String Priimek,
                               @RequestParam(value = "Email", required = true) String Email,
                               @RequestParam(value = "UporabniskoIme", required = true) String UporabniskoIme,
                               @RequestParam(value = "Geslo", required = true) String Geslo) {
        {

           uporabnikDao.dodajUporabnika(Ime, Priimek, Email, UporabniskoIme, Geslo);

            return "redirect:/vnosi"; //return "/seznamOseb";
        }
    }

    @RequestMapping(value = {"/vnosi"}, method = RequestMethod.GET)
    public String vnosi(Model model) {
        model.addAttribute("Uporabniki", uporabnikDao.vsiUporabniki());
        return "vnosi";
    }

}
