package hello;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

public class DatabaseConnection {

	
	private static final String insert = "insert into random_number (dice1, dice2, dice3, timestamp) values(?,?,?,?)";
	
	
	public void Connection(Dice dc) {
		
		Properties prop = new Properties();
		InputStream input = null;

		try {

			input = new FileInputStream("config/application.properties");

			prop.load(input);

			System.out.println(prop.getProperty("db.mysql.drivername"));
			System.out.println(prop.getProperty("use.database"));
			System.out.println(prop.getProperty("db.mysql.username"));
			System.out.println(prop.getProperty("db.mysql.password"));
			System.out.println(prop.getProperty("db.mysql.drivername"));

		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		String url = prop.getProperty("db.mysql.url");
		String user = prop.getProperty("db.mysql.username");
		String password = prop.getProperty("db.mysql.password");
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		try	{
			
			if(prop.getProperty("use.database").equals("true"))
			{
				Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement stmt=conn.prepareStatement(insert); 
	       
				stmt.setInt(1, dc.getDice1());
				stmt.setInt(2, dc.getDice2());
				stmt.setInt(3, dc.getDice3());
				stmt.setString(4, sdf.format(date));
				stmt.executeUpdate();
			}

		}
		catch(Exception err){
			err.printStackTrace();
		}
		
	}
		
}
	
	
