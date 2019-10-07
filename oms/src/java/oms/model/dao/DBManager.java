package oms.model.dao;

import oms.model.Movie;
import oms.model.Member;
import oms.model.User;
import oms.model.Non_Member;
import oms.model.Staff;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author George
 * 
 * DBManager is the primary DAO class to interact with the database and perform CRUD operations with the db.
 * Firstly, complete the existing methods and implement them into the application.
 * 
 * So far the application uses the Read and Create operations in the view.
 * Secondly, improve the current view to enable the Update and Delete operations.
 */

public class DBManager {

    private Statement st; 

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public Movie findMovie(String ID) throws SQLException {
        Movie thisMovie = new Movie();
        
        String query = "SELECT * FROM FILMS WHERE FILM_ID='"+ ID + "'";
        
        ResultSet rs=st.executeQuery(query);
        
        while(rs.next()) {
            thisMovie.setID(rs.getString("FILM_ID"));
            thisMovie.setTitle(rs.getString("FILM_NAME"));
            thisMovie.setYear(rs.getInt("YEAR_RELEASED"));
            thisMovie.setGenre(rs.getString("FILM_GENRE"));
            thisMovie.setRating(rs.getInt("FILM_RATING"));
            thisMovie.setPrice(rs.getDouble("FILM_PRICE"));
            thisMovie.setRuntime(rs.getInt("FILM_RUNTIME"));
            thisMovie.setSynopsis(rs.getString("FILM_SYNOPSIS"));
            thisMovie.setImage(rs.getString("FILM_IMAGE"));
            thisMovie.setQuantity(rs.getInt("FILM_QUANTITY"));
        }
        
        return thisMovie;
    }
    
    public ArrayList getMovieIds() throws SQLException {
        ArrayList ids = new ArrayList();
        
        String query = "SELECT FILM_ID FROM FILMS";
        ResultSet rs=st.executeQuery(query);
        
        while(rs.next()) {
            ids.add(rs.getString("FILM_ID"));
        }
        
        return ids;
    }

    //Check if a student exist in the database
    public boolean checkMovie(String ID) throws SQLException {
       //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        //verify if the student exists
        return false;
    }
    
    public int getNumMovies() throws SQLException{
        ResultSet rs=st.executeQuery("SELECT COUNT(*) FROM FILMS");
        rs.next();
        return rs.getInt(1);
    }

    //Add a student-data into the database
    public void addMovie(String ID,String title,int year,String genre,int rating,double price,int runtime,String synopsis,String image,int quantity) throws SQLException {        
        //code for add-operation
        // get num records of existing movies
        // set id = num records + 1
        st.executeUpdate("INSERT INTO FILMS VALUES('"+ID+"','"+title+"',"+year+",'"+genre+"',"+rating+","+price+","+runtime+",'"+synopsis+"','"+image+"',"+quantity+")");
    }

    //update a student details in the database
    public void updateMovie(String ID,String title,int year,String genre,int rating,double price,int runtime,String synopsis,String image,int quantity) throws SQLException {
        //code for update-operation
        st.executeUpdate("UPDATE FILMS SET FILM_NAME ='"+title+"',YEAR_RELEASED ="+year+", FILM_GENRE ='"+genre+"',FILM_RATING ="+rating+",FILM_PRICE ="+price+",FILM_RUNTIME ="+runtime+",FILM_SYNOPSIS ='"+synopsis+"',FILM_IMAGE ='"+image+"'WHERE FILM_ID='"+ ID + "'");
    }
    
        public void updateMovie(Movie m) throws SQLException {
        //code for update-operation
        st.executeUpdate("UPDATE FILMS SET FILM_NAME ='"+m.getTitle()+"',YEAR_RELEASED ="+m.getYear()+", FILM_GENRE ='"+m.getGenre()+"',FILM_RATING ="+m.getRating()+",FILM_PRICE ="+m.getPrice()+",FILM_RUNTIME ="+m.getRuntime()+",FILM_SYNOPSIS ='"+m.getSynopsis()+"',FILM_IMAGE ='"+m.getImage()+"'WHERE FILM_ID='"+ m.getID() + "'");
    }
    
    //delete a student from the database
    public void deleteMovie(String ID) throws SQLException{
        //code for delete-operation
        st.executeUpdate("DELETE FROM FILMS WHERE FILM_ID = '"+ ID + "'");
    }
    
    public ArrayList<Movie> getAllMovies() throws SQLException{
        ArrayList<Movie> movies = new ArrayList();
        
        ResultSet rs=st.executeQuery("SELECT * FROM FILMS");
        
        while(rs.next()) {
            Movie newMovie = new Movie();
            newMovie.setID(rs.getString("FILM_ID"));
            newMovie.setTitle(rs.getString("FILM_NAME"));
            newMovie.setYear(rs.getInt("YEAR_RELEASED"));
            newMovie.setGenre(rs.getString("FILM_GENRE"));
            newMovie.setRating(rs.getInt("FILM_RATING"));
            newMovie.setPrice(rs.getDouble("FILM_PRICE"));
            newMovie.setRuntime(rs.getInt("FILM_RUNTIME"));
            newMovie.setSynopsis(rs.getString("FILM_SYNOPSIS"));
            newMovie.setImage(rs.getString("FILM_IMAGE"));
            newMovie.setQuantity(rs.getInt("FILM_QUANTITY"));
            
            movies.add(newMovie);
        }
        
       return movies;
    }
    
    public ArrayList<Movie> search(String args) throws SQLException{
        ArrayList<Movie> movies = new ArrayList();
        
        args = args.toLowerCase();
        
        String query = "SELECT * FROM FILMS WHERE lower(FILM_NAME) LIKE '%"+args+"%' OR lower(FILM_GENRE) LIKE '%"+args+"%'";
        
        ResultSet rs=st.executeQuery(query);
        
        while(rs.next()) {
            Movie newMovie = new Movie();
            newMovie.setID(rs.getString("FILM_ID"));
            newMovie.setTitle(rs.getString("FILM_NAME"));
            newMovie.setYear(rs.getInt("YEAR_RELEASED"));
            newMovie.setGenre(rs.getString("FILM_GENRE"));
            newMovie.setRating(rs.getInt("FILM_RATING"));
            newMovie.setPrice(rs.getDouble("FILM_PRICE"));
            newMovie.setRuntime(rs.getInt("FILM_RUNTIME"));
            newMovie.setSynopsis(rs.getString("FILM_SYNOPSIS"));
            newMovie.setImage(rs.getString("FILM_IMAGE"));
            newMovie.setQuantity(rs.getInt("FILM_QUANTITY"));
            
            movies.add(newMovie);
        }
        
       return movies;
    }
    
    public ArrayList<Movie> getGenre(String genre) throws SQLException{
        ArrayList<Movie> movies = new ArrayList();
        
        String query = "SELECT * FROM FILMS WHERE FILM_GENRE='"+genre+"'";
        
        ResultSet rs=st.executeQuery(query);
        
        while(rs.next()) {
            Movie newMovie = new Movie();
            newMovie.setID(rs.getString("FILM_ID"));
            newMovie.setTitle(rs.getString("FILM_NAME"));
            newMovie.setYear(rs.getInt("YEAR_RELEASED"));
            newMovie.setGenre(rs.getString("FILM_GENRE"));
            newMovie.setRating(rs.getInt("FILM_RATING"));
            newMovie.setPrice(rs.getDouble("FILM_PRICE"));
            newMovie.setRuntime(rs.getInt("FILM_RUNTIME"));
            newMovie.setSynopsis(rs.getString("FILM_SYNOPSIS"));
            newMovie.setImage(rs.getString("FILM_IMAGE"));
            newMovie.setQuantity(rs.getInt("FILM_QUANTITY"));
            
            movies.add(newMovie);
        }
        
       return movies;
    }
    
    public void addMember(String ID, String pwd) throws SQLException {        
        st.executeUpdate("INSERT INTO MEMBER VALUES('"+ID+"','"+pwd+"')");
    }
    public void addNon_Member(String ID) throws SQLException {        
        st.executeUpdate("INSERT INTO NON_MEMBER VALUES('"+ID+"')");
    }
    public void addStaff(String ID, String pwd) throws SQLException {        
        st.executeUpdate("INSERT INTO STAFF VALUES('"+ID+"','"+pwd+"')");
    }
    
    public boolean isStaff(String ID) throws SQLException{
        
        String query = "SELECT * FROM STAFF WHERE USER_ID='"+ ID + "'";
        ResultSet rs=st.executeQuery(query);
        
        rs.next();
        //return rs != null;
        return (rs.getRow()>=1);
        
    }
    
    //Find user by ID in the database
    public User findUser(String email, String password) throws SQLException {
        //setup the select sql query string
        String searchQueryString = "select * from Users where ID='" + email + "' AND password='" + password + "'";
        //execute this query using the statement field
       //add the results to a ResultSet
         ResultSet rs = st.executeQuery(searchQueryString);
        //search the ResultSet for a user using the parameters
         boolean hasUser = rs.next();
         User userFromDB = null;
                 
         if(hasUser){
         
             String sID = rs.getString("ID");
             String sPassword = rs.getString("password"); 
             String sEmail = rs.getString("email");
             String sName = rs.getString("name");
             String sPhone = rs.getString("phone");
             
             userFromDB = new User (sID, sEmail, sName, sPassword, sPhone);
         }
        
         rs.close();
        // st.close();
         
         return userFromDB;
         
    }
    
    public User existingUser(String email) throws SQLException {
        //setup the select sql query string
        String searchQueryString = "select * from Users where ID='" + email + "'";
        //execute this query using the statement field
       //add the results to a ResultSet
         ResultSet rs = st.executeQuery(searchQueryString);
        //search the ResultSet for a user using the parameters
         boolean hasUser = rs.next();
         User userFromDB = null;
                 
         if(hasUser){
         
             String sID = rs.getString("USER_ID");
             String sPassword = rs.getString("USER_PASSWORD"); 
             String sEmail = rs.getString("USER_EMAIL");
             String sName = rs.getString("USER_NAME");
             String sPhone = rs.getString("USER_PHONE");
             
             userFromDB = new User (sID, sEmail, sName, sPassword, sPhone);
         }
        
         rs.close();
        // st.close();
         
         return userFromDB;
         
    }

    //Check if a user exist in the database
    public boolean checkUser(String ID, String password) throws SQLException {
       //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a user using the parameters
        //verify if the user exists
        return false;
    }

    //Add a user-data into the database
    public void addUser(String ID, String email, String name, String password, String phone) throws SQLException {        
        //code for add-operation
        
         String createQueryString = "insert into Users values ('" + ID + "', '" + email + "', '" + name + "', '" + password + "', '" + phone + "')";
         boolean recrodCreated = st.executeUpdate(createQueryString) > 0;
         
         if (recrodCreated){
         System.out.println("record created");
         }
         else {
         System.out.println("record not created");
         }
             
    }

    //update a user details in the database
    public void updateUser(String ID, String email, String name, String password, String phone) throws SQLException {
        //code for update-operation
        
        String updateQueryString = "update Users set email = '" + email + "', name= '" + name + "', password = '"  + password + "', phone = '" + phone + "' where ID='" + ID + "'";
        boolean recrodUpdated = st.executeUpdate(updateQueryString) > 0;
         
         if (recrodUpdated){
         System.out.println("record updated");
         }
         else {
         System.out.println("record not updated");
         }
       
    }
    
    //delete a user from the database
    public void deleteUser(String ID) throws SQLException{
        //code for delete-operation
        
        String deleteQueryString = "delete from Users where ID= '" + ID + "' ";
        boolean recrodDeleted = st.executeUpdate(deleteQueryString) > 0;
         
         if (recrodDeleted){
         System.out.println("record deleted");
         }
         else {
         System.out.println("record not deleted");
         }
    }
}
 