/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.controller;

import com.machfudh.test.dao.ProfileDao;
import com.machfudh.test.dao.ProvinsiDao;
import com.machfudh.test.dao.UserDao;
import com.machfudh.test.dao.UsersrolesDao;
import com.machfudh.test.entity.Profile;
import com.machfudh.test.entity.Provinsi;
import com.machfudh.test.entity.User;
import com.machfudh.test.entity.Usersroles;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Mahfud
 */
@Controller
@Transactional
public class SignUpController {

    @Autowired
    private ProfileDao profileDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private ProvinsiDao provinsiDao;

    @Autowired
    private UsersrolesDao usersrolesDao;

    private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @GetMapping("/signup")
    public String signUpGet(Model model) {

        Profile profile = new Profile();
        if (provinsiDao.count() > 0) {
            Iterable<Provinsi> listProvinsi = provinsiDao.findAll();
            model.addAttribute("listProvinsi", listProvinsi);
        }

        model.addAttribute("profile", profile);
        return "signup";
    }

    @PostMapping("/signup")
    public String signUpPost(@Valid Profile profile, BindingResult errors, Model model) {

        if (errors.hasErrors()) {
            return "signup";
        }

        if (!StringUtils.hasText(profile.getUser().getPassword())) {
            errors.addError(new FieldError("user.password", "user.password", "Password may be empty"));
            return "signup";
        }

        if (userDao.findByEmail(profile.getUser().getEmail()) != null) {
            errors.addError(new FieldError("user.email", "user.email", "Email Sudah Terdaftar"));
            return "signup";
        }

        User user = profile.getUser();
        user.setActive(Boolean.TRUE);
        user.setPassword(passwordEncoder.encode(profile.getUser().getPassword()));

        userDao.save(user);
        profileDao.save(profile);

        User userId = userDao.findByEmail(profile.getUser().getEmail());
        if (userId != null) {
            // Insert permition default
            Usersroles usersroles = new Usersroles();
            usersroles.setIdUser(userId.getId());
            usersroles.setIdRoles("usr"); // default ROLE_USER

            usersrolesDao.save(usersroles);
        }
        return "redirect:login";
    }

}
