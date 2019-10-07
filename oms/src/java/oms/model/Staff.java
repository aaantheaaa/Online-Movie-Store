/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oms.model;

/**
 *
 * @author el181
 */
import java.io.Serializable;

public class Staff implements Serializable{
    
    private String staff_ID;
    private String staff_pwd;
    
    public Staff(String ID, String pwd)
    {
        staff_ID = ID;
        staff_pwd = pwd;
    }
    
    public Staff(){}
    
    public String getStaffID()
    {
        return staff_ID;
    }
    
    public void setStaffID(String ID)
    {
        staff_ID = ID;
    }
    public String getStaffPwd()
    {
        return staff_pwd;
    }
    
    public void setStaffPwd(String pwd)
    {
        staff_pwd = pwd;
    }
}
