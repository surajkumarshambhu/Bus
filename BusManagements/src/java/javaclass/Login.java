/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaclass;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Suraj Kumar
 */
@Entity
public class Login {
    @Id
    private String Userid;
    private String Username;
    private String Usertype;
    private String Password;
    private String Gender;

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }
    
    

    public String getUserid() {
        return Userid;
    }

    public void setUserid(String Userid) {
        this.Userid = Userid;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getUsertype() {
        return Usertype;
    }

    public void setUsertype(String Usertype) {
        this.Usertype = Usertype;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    
    
}
