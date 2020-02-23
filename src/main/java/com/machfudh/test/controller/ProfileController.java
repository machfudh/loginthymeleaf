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
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
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
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Mahfud
 */
@Controller
@Transactional
public class ProfileController {

    @Autowired
    private ProfileDao profileDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private ProvinsiDao provinsiDao;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @GetMapping("/list")
    public void listProfile(Model model) {
        model.addAttribute("profile", profileDao.findAll());

    }

    @GetMapping("/edit")
    public String editProfileGet(@RequestParam(value = "id", required = false) String id, Model model) {

        model.addAttribute("profile", new Profile());
        if (id != null && !id.isEmpty()) {
            Profile profile = profileDao.findById(id).get();
            if (profile != null) {
                System.out.println("==============================  " + profile.getUser().getId());
                model.addAttribute("profile", profile);
            }
            if (provinsiDao.count() > 0) {
                Iterable<Provinsi> listProvinsi = provinsiDao.findAll();
                model.addAttribute("listProvinsi", listProvinsi);
            }
        }
        return "edit";
    }

    @PostMapping("/edit")
    public String editProfilePost(@Valid Profile p, BindingResult errors) {

        System.out.println("===================== " + p.getId());
        System.out.println("===================== " + p.getNama());
        System.out.println("===================== " + p.getAlamat());
        System.out.println("===================== " + p.getIbukandung());
        System.out.println("===================== " + p.getTgllahir());
        System.out.println("===================== " + p.getPekerjaan());
        System.out.println("===================== " + p.getPendidikan());

        if (errors.hasErrors()) {
            System.out.println("Ada Error nich haduh ");
            return "edit";
        }

        profileDao.save(p);

        return "redirect:list";
    }

}
