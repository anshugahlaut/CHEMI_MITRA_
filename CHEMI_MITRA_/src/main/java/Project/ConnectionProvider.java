package Project;

import java.sql.*;
import java.sql.DriverManager;


public class ConnectionProvider {
    public static Connection getCon(){
    	Connection con=null;
        try{
        
        	 Class.forName("com.mysql.cj.jdbc.Driver");
        	 con=DriverManager.getConnection("jdbc:mysql://localhost/ntaj114db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root", "tiger");
        	 return con;
        }catch(Exception e){
                System.out.println(e);
                return null;
        }
      
    }
}
