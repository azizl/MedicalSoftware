/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**

 * @author Aziz
 */
import java.sql.*;
import javax.swing.*;
public class Connect {
     static Connection con=null;
   
        public static Connection ConnectDB(){
             try{
           
          Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hms_db","root","aziz");
          return con;
            
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
            return null;
    }      
}
}
