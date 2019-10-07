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
public class Movie implements Serializable {

    
    private String ID;   
    private String title;   
    private int year;    
    private String genre;    
    private int rating;    
    private double price;
    private int runtime;
    private String synopsis;
    private String image;
    private int quantity;

    public Movie(String ID, String title,int year,String genre,int rating,double price,int runtime,String synopsis,String image,int quantity) {        
        this.ID = ID;
        this.title = title;
        this.year= year;
        this.genre = genre;
        this.rating = rating;
        this.price = price;
        this.runtime = runtime;
        this.synopsis = synopsis;
        this.image = image;
        this.quantity = quantity;
    }

    public Movie() { }
    
    public void updateDetails(String title,int year,String genre,int rating,double price,int runtime,String synopsis,String image,int quantity){
        this.title = title;
        this.year= year;
        this.genre = genre;
        this.rating = rating;
        this.price = price;
        this.runtime = runtime;
        this.synopsis = synopsis;
        this.image = image;
        this.quantity = quantity;
    }

    /*public boolean matchID(String ID){
        return this.ID.equals(ID.trim());
    }
    
    public boolean matchPassword(String password){
        return this.password.equals(password.trim());
    } */
    
    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
    
    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public int getRuntime() {
        return runtime;
    }

    public void setRuntime(int runtime) {
        this.runtime = runtime;
    }
    
    public String getSynopsis() {
        return synopsis;
    }
    
        public String getSynopsis(int length) {
        return synopsis.substring(0, Math.min(synopsis.length(), length));
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}//end class
