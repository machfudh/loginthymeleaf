/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.rest;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.machfudh.test.dao.KecamatanDao;
import com.machfudh.test.dao.KelurahanDao;
import com.machfudh.test.dao.KotaDao;
import com.machfudh.test.dao.ProvinsiDao;
import com.machfudh.test.entity.Kecamatan;
import com.machfudh.test.entity.Kota;
import com.machfudh.test.entity.Provinsi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Mahfud
 */
@RestController
@RequestMapping("/api/region")
public class RegionrRest {
    
    @Autowired
    private ProvinsiDao provinsiDao;
    
    @Autowired
    private KotaDao kotaDao;
    
    @Autowired
    private KecamatanDao kecamatanDao;
    
    @Autowired
    private KelurahanDao kelurahanDao;
    
    
    /**
     * Method untuk mengambil list provinsi xxxx
     * @return json dari object List Provinsi
     */
    @RequestMapping(method = RequestMethod.GET, value = "/get/provinsi", produces = "application/json")
    public String getProvinsi() {
        
        System.out.println("getProvinsi =========================");
        Iterable<Provinsi> result = provinsiDao.findAll();
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(result);
        return json;
    }

    /**
     * Method untuk mengambil list kota berdasarkan provinsi
     * @param id parameter id provinsi
     * @return json dari object List Kota
     */
    @RequestMapping(method = RequestMethod.GET, value = "/get/kota/{id}", produces = "application/json")
    public String getKota(@PathVariable String id) {
        Provinsi p = provinsiDao.findById(id).get();
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(kotaDao.findByProvinsi(p));
        return json;
    }
    
    /**
     * Method untuk mengambil list kecamatan berdasarkan kota
     * @param id parameter id kota
     * @return json dari object List Kecamatan
     */
    @RequestMapping(method = RequestMethod.GET, value = "/get/kecamatan/{id}", produces = "application/json")
    public String getKecamatan(@PathVariable String id) {
        Kota k = kotaDao.findById(id).get();
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(kecamatanDao.findByKota(k));
        System.out.println("kecamatan json  : "+json);
        return json;
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/get/kelurahan/{id}", produces = "application/json")
    public String getKelurahan(@PathVariable String id) {
        Kecamatan k = kecamatanDao.findById(id).get();
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(kelurahanDao.findByKecamatan(k));
        return json;
    }
}
