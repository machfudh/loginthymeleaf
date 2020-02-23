/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Mahfud
 */

@Data
@Entity
public class Kota implements Serializable {
    
    @Id 
    @Column(length = 36)
    private String id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "id_provinsi")
    private Provinsi provinsi;
    
  
    @NotNull
    @NotEmpty
    @Size(max = 10)
    @Column(unique = true)
    private String kode;
    
  
    @NotNull
    @NotEmpty
    @Size(max = 100)
    private String nama;
    
    
    
}
