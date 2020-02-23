/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.machfudh.test.entity;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Mahfud
 */
@Data
@Entity
@Table(name = "user")
public class User  implements Serializable {
    
     private static final long serialVersionUID = -7371610187321351709L;

    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
    
    @OneToOne(fetch = FetchType.LAZY,cascade =  CascadeType.ALL, mappedBy = "user")
    private Profile profile;

    @NotNull
    @NotEmpty
    @Column(unique = true)
    private String email;
    
    @NotNull
    @NotEmpty
    private String password;

    @NotNull
    @Column(nullable = false)
    private Boolean active = Boolean.TRUE;
    
}
