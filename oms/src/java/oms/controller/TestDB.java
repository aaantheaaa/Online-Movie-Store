
/*This stand-alone application test the connection to the db once setup in DB class
 *It performs an add-function of a Student to the database
 *To use this app, you should complete the addStudent method in DBManager class
 *
 *
 *@author George
**/
package oms.controller;

import oms.model.dao.DBManager;
import oms.model.dao.DBConnector;
import java.sql.*;
import java.util.*;
import java.util.logging.*;

public class TestDB {
    private static Scanner in = new Scanner(System.in);
    
        public static void main5(String[] args) {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            System.out.println(db.findMovie("3").getSynopsis());
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
    public static void main2(String[] args) {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            String genre = "horror";
            System.out.println(db.getGenre(genre));
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main3(String[] args) {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            
            int key = (new Random()).nextInt(999999);
            String ID = "" + key; 
            System.out.print("Movie title: ");
            String title = in.nextLine();
            System.out.print("Year released: ");
            int year = in.nextInt();
            in.nextLine();
            System.out.print("Film genre: ");
            String genre = in.nextLine();
            System.out.print("Film rating: ");
            int rating = in.nextInt();
            in.nextLine();
            System.out.print("Film price: ");
            double price = in.nextDouble();
            in.nextLine();
            System.out.print("Film runtime: ");
            int runtime = in.nextInt();
            in.nextLine();
            System.out.print("Film synopsis: ");
            String synopsis = in.nextLine();
            System.out.print("Film image: ");
            String image = in.nextLine();
            System.out.print("Film Quantity: ");
            int quantity = in.nextInt();
            in.nextLine();
            
            db.addMovie(ID, title, year, genre, rating, price,runtime,synopsis,image,quantity); //This method must be completed in DBManager class
            System.out.println("Movie is added to the database.");
            connector.closeConnection(); //Professional practice is to close connection to database once operations are finalized
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        public static void main4(String[] args) {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            
            System.out.print("There are currently " + db.getNumMovies() + " movies.\n");
            
            System.out.print("Movie ID ");
            String ID = in.nextLine();
            if(db.findMovie(ID) != null){
                
            System.out.print("Movie title: ");
            String title = in.nextLine();
            System.out.print("Year released: ");
            int year = in.nextInt();
            in.nextLine();
            System.out.print("Film genre: ");
            String genre = in.nextLine();
            System.out.print("Film rating: ");
            int rating = in.nextInt();
            in.nextLine();
            System.out.print("Film price: ");
            double price = in.nextDouble();
            in.nextLine();
            System.out.print("Film runtime: ");
            int runtime = in.nextInt();
            in.nextLine();
            System.out.print("Film synopsis: ");
            String synopsis = in.nextLine();
            System.out.print("Film image: ");
            String image = in.nextLine();
            System.out.print("Film Quantity: ");
            int quantity = in.nextInt();
            in.nextLine();
            db.updateMovie(ID, title, year, genre, rating, price, runtime, synopsis, image, quantity);
            }
            System.out.println("Movie is updated to the database.");
            connector.closeConnection(); //Professional practice is to close connection to database once operations are finalized
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
         public static void main6(String[] args) {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            String ID = in.nextLine();
            db.deleteMovie(ID);
            System.out.println("Movie is deleted from the database.");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         }
        public static void main(String[] args)
        {
            try{
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            
            System.out.print("MemberID: ");
            String member_ID = in.nextLine();
            System.out.print("Member Password: ");
            String member_pwd = in.nextLine();
            
            db.addMember(member_ID,member_pwd);
            System.out.print("Member has created ");
            
            System.out.print("Non MemberID: ");
            String non_member_ID = in.nextLine();
            
            db.addNon_Member(non_member_ID);
            System.out.print("Non Member has created ");
            
            System.out.print("Staff ID: ");
            String staff_ID = in.nextLine();
            System.out.print("Staff Password: ");
            String staff_pwd = in.nextLine();
            
            db.addStaff(staff_ID,staff_pwd);
            System.out.print("Staff has created ");
            
            connector.closeConnection(); 
            
            } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
    
   
}
