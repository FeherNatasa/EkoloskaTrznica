package si.feri.eko.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BazaController {

    // inject via application.properties
    @Value("${welcome.message}")
    private String message = "Hello World";

    @RequestMapping(value = { "/", "/vnosi" }, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("message", this.message);
        return "vnosi";
    }
}
