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

public class Non_Member implements Serializable{
    
    private String non_member_ID;

    
    public Non_Member(String ID)
    {
        non_member_ID = ID;

    }
    
    public Non_Member(){}
    
    public String getNon_MemberID()
    {
        return non_member_ID;
    }
    
    public void setNon_MemberID(String ID)
    {
        non_member_ID = ID;
    }

}
