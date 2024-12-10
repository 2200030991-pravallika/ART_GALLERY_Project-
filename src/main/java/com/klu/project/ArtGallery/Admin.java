package com.klu.project.ArtGallery;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "admin_data")  // Specifies the table name
public class Admin {

    @Id
    @Column(name = "id")  // Specifies the column name for the 'id' field
    private Long id;

    @Column(name = "username")  // Specifies the column name for the 'username' field
    private String username;

    @Column(name = "password")  // Specifies the column name for the 'password' field
    private String password;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
