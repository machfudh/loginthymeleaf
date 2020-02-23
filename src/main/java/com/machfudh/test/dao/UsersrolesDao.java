/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.dao;

import com.machfudh.test.entity.Usersroles;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 *
 * @author Mahfud
 */
public interface UsersrolesDao extends PagingAndSortingRepository<Usersroles, String>{
    
}
