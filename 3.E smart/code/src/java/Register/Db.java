/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;

import java.sql.*;


/**
 *
 * @author comp
 */
public class Db {
    
    public static Connection getConnection()
    {
        Connection con =null;
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smart", "root", "root");
    System.out.println("Database Connected");
    
}   
catch(Exception e)
    
{
    System.out.println(e);
}
        return con;
}
    
      public static void  ExecuteQuery(String Query){
     try {
         Connection conn=getConnection();
        Statement st=conn.createStatement();
       
            st.execute(Query);
        } catch (SQLException ex) {
            
            System.out.println(ex.toString());
            System.out.println(Query);
          System.out.println("Query Error");
        }
        
    }
    public static void main(String[] args)
    {
        
    }
}
