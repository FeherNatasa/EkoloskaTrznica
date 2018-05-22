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

    @RequestMapping(value = { "/", "/registracija" }, method = RequestMethod.GET)
    public String registracija(Model model) {
        model.addAttribute("message", this.message);
        return "registracija";
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
}
