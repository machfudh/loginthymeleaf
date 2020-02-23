/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.dao;

import com.machfudh.test.entity.User;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 *
 * @author Mahfud
 */
public interface UserDao extends PagingAndSortingRepository<User, String>{

    public User findByEmail(String email); 
    
}
