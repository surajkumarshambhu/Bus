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
public class Routes {
   @Id
   private String routeid;
   private String fromd;
   private String tod;
   private String busno;  

    public String getRouteid() {
        return routeid;
    }

    public void setRouteid(String routeid) {
        this.routeid = routeid;
    }

    public String getFromd() {
        return fromd;
    }

    public void setFromd(String fromd) {
        this.fromd = fromd;
    }

    public String getTod() {
        return tod;
    }

    public void setTod(String tod) {
        this.tod = tod;
    }

    public String getBusno() {
        return busno;
    }

    public void setBusno(String busno) {
        this.busno = busno;
    }
   
   
}
