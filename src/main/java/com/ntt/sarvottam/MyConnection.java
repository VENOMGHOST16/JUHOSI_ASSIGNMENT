package com.ntt.sarvottam;

import java.sql.Connection;
import java.sql.DriverManager;
public class MyConnection    
{
	Connection cn=null;
	public Connection doConnect()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String s1="jdbc:mysql://localhost:3306/myjava";
			String s2="root";
			String s3="sarvottammk14";
			cn=DriverManager.getConnection(s1,s2,s3);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cn;
	}
}
