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
public class Bus {
    @Id
    private String busid;
    private String facultyid;
    private String time;
    private String status;

    public String getBusid() {
        return busid;
    }

    public void setBusid(String busid) {
        this.busid = busid;
    }

    public String getFacultyid() {
        return facultyid;
    }

    public void setFacultyid(String facultyid) {
        this.facultyid = facultyid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
}
