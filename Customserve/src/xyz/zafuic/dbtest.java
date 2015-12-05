package xyz.zafuic;

import java.lang.ClassNotFoundException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbtest {

	public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;

        try
        {
            System.out.println("conneting to Database...");
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            System.out.println("Connection Successful");

        }
        catch(ClassNotFoundException error)
        {
            System.out.println("Error:" + error.getMessage()); 
        }

        catch(SQLException error)
        {
            System.out.println("Error:" + error.getMessage());
        }
        finally
        {
            if (connection != null) 
                try {
                    connection.close();
                    }
            catch(SQLException ignore)
            {

            }

            if (statement != null) 
                try {
                    statement.close();
                    }

            catch(SQLException ignore)
            {

            }
        }
	}

}

//}