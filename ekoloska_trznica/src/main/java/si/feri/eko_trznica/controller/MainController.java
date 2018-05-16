package si.feri.eko_trznica.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MainController {

    // inject via application.properties
    @Value("${welcome.message}")
    private String message = "Hello World";


    @RequestMapping(value = {"/", "/welcome"}, method = GET)
    public String welcome(Model model) {
        model.addAttribute("message", this.message);
        return "welcome";
    }

}
