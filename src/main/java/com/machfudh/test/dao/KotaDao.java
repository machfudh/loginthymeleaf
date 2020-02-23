/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.dao;

import com.machfudh.test.entity.Kota;
import com.machfudh.test.entity.Provinsi;
import java.util.List;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 *
 * @author Mahfud
 */
public interface KotaDao extends PagingAndSortingRepository<Kota, String> {
    
    public List<Kota> findByProvinsi(Provinsi provinsi);
    
}
