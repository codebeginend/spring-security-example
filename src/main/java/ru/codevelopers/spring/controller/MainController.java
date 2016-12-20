package ru.codevelopers.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by zaur on 20.12.16.
 */
@Controller
public class MainController {

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String mainPage() {

        return "/content/user";

    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage() {

        return "/content/admin";

    }

    @RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Неправильный логин или пароль");
        }

        model.setViewName("login");

        return model;

    }
}
