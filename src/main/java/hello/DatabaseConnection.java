package hello;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatabaseConnection {

	private static final String url = "jdbc:mysql://localhost:3306/dice?autoReconnect=true&useSSL=false";
	private static final String user = "root";
	private static final String password = "admin";
	private static final String insert = "insert into random_number (dice1, dice2, dice3, timestamp) values(?,?,?,?)";
	
	
	public void Connection(Dice dc) {
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		try	{
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement stmt=conn.prepareStatement(insert); 
       
			stmt.setInt(1, dc.getDice1());
			stmt.setInt(2, dc.getDice2());
			stmt.setInt(3, dc.getDice3());
			stmt.setString(4, sdf.format(date));
			stmt.executeUpdate();
		
		}
		catch(Exception err){
			err.printStackTrace();
		}
		
	}
		
}
	
	
