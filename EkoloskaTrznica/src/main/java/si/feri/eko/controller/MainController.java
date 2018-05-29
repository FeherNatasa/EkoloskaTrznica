package si.feri.eko.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    // inject via application.properties
    @Value("${welcome.message}")
    private String message = "Hello World";


    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("message", this.message);
        return "welcome";
    }

    @RequestMapping(value = { "/", "/domov" }, method = RequestMethod.GET)
    public String domov(Model model) {
        model.addAttribute("message", this.message);
        return "domov";
    }

    @RequestMapping(value = { "/", "/kmetije" }, method = RequestMethod.GET)
    public String kmetije(Model model) {
        model.addAttribute("message", this.message);
        return "kmetije";
    }

    @RequestMapping(value = { "/", "/onas" }, method = RequestMethod.GET)
    public String oNas(Model model) {
        model.addAttribute("message", this.message);
        return "onas";
    }

    @RequestMapping(value = { "/", "/kontakt" }, method = RequestMethod.GET)
    public String kontakti(Model model) {
        model.addAttribute("message", this.message);
        return "kontakt";
    }

    @RequestMapping(value = { "/", "/kmetija1" }, method = RequestMethod.GET)
    public String kmetija1(Model model) {
        model.addAttribute("message", this.message);
        return "kmetija1";
    }


    @RequestMapping(value = { "/", "/profil" }, method = RequestMethod.GET)
    public String profil(Model model) {
        model.addAttribute("message", this.message);
        return "profil";
    }

    @RequestMapping(value = { "/", "/kosarica" }, method = RequestMethod.GET)
    public String kosarica(Model model) {
        model.addAttribute("message", this.message);
        return "kosarica";
    }

    @RequestMapping(value = { "/", "/mojaNarocila" }, method = RequestMethod.GET)
    public String mojaNarocila(Model model) {
        model.addAttribute("message", this.message);
        return "mojaNarocila";
    }

}
