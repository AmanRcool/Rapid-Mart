
package DB;
import java.sql.*;

public class DBConnection {
 public Connection con;
 public ResultSet rst;
 public PreparedStatement pstmt;
 public Statement stmt;
 public DBConnection(){
     try{
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rapidmart","root","root");
     }
     catch(Exception e){
         e.printStackTrace();
     }
 }
    
}
