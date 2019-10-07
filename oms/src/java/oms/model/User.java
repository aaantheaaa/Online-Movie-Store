package oms.model;

import java.io.Serializable;

/**
 *
 * @author George
 */

public class User implements Serializable {

    
    private String ID;   
    private String email;   
    private String name;    
    private String password;    
    private String phone;    

    public User(String ID, String email,String name,String password,String phone) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;        
    }

    public User() { }
    
    public void updateDetails(String name, String email, String password, String phone){
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;   
    }

    public boolean matchID(String ID){
        return this.ID.equals(ID.trim());
    }
    
    public boolean matchPassword(String password){
        return this.password.equals(password.trim());
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}//end class
