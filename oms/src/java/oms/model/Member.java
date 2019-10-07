/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oms.model;
import java.io.Serializable;
/**
 *
 * @author el181
 */
public class Member implements Serializable{
    
    private String member_ID;
    private String member_pwd;
    
    public Member(String ID, String pwd)
    {
        member_ID = ID;
        member_pwd = pwd;
    }
    
    public Member(){}
    
    public String getMemberID()
    {
        return member_ID;
    }
    
    public void setMemberID(String ID)
    {
        member_ID = ID;
    }
    public String getMemberPwd()
    {
        return member_pwd;
    }
    
    public void setMemberPwd(String pwd)
    {
        member_pwd = pwd;
    }
}
