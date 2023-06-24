package com.ntt.sarvottam;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.Timestamp;

public class CustomerInput
{

	String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	String company;
	String owner;
	String item;
	int quantity;
	float weight;
	String dimensions;
	int boxcnt;
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public String getDimensions() {
		return dimensions;
	}
	public void setDimensions(String dimensions) {
		this.dimensions = dimensions;
	}
	public int getBoxcnt() {
		return boxcnt;
	}
	public void setBoxcnt(int boxcnt) {
		this.boxcnt = boxcnt;
	}
	
	public boolean insert(String name,String Requestshipment,String Trackid,String Specific,String CheckList)
	{
		boolean ch=false;
		
		try
		{
			MyConnection ob=new MyConnection();
			Connection cn=ob.doConnect();
			String qry="insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=cn.prepareStatement(qry);
			
			java.sql.Date d2 = java.sql.Date.valueOf(date);
			Timestamp timestamp = new Timestamp(d2.getTime());
			ps.setString(1,name);
			ps.setTimestamp(2,timestamp);
			ps.setString(3,company);
			ps.setString(4,owner);
			ps.setString(5,item);
			ps.setInt(6,quantity);
			ps.setFloat(7, weight);
			ps.setString(8,Requestshipment);
			ps.setString(9,Trackid);
			ps.setString(10,dimensions);
			ps.setInt(11,boxcnt);
			ps.setString(12,Specific);
			ps.setString(13,CheckList);
			
			
			ps.executeUpdate();
			
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ch;
	}
	

	
}
