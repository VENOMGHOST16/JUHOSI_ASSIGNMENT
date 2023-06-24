<%@page import="java.sql.*" %>
<jsp:useBean id="conn" class="com.ntt.sarvottam.MyConnection" scope="session"></jsp:useBean>
<jsp:setProperty  name="conn" property="*"/> 

<%
	Connection cn=conn.doConnect();
	String s1="select sum(quantity) as quant,sum(weight) as totw,sum(box_count) as totbx from customer where customer=?";
	String s2="select sum(quantity) as quant,sum(weight) as totw,sum(box_count) as totbx from customer";
	PreparedStatement p1=cn.prepareStatement(s1);
	p1.setString(1,"customer1");
	PreparedStatement p2=cn.prepareStatement(s1);
	p2.setString(1,"customer2");
	PreparedStatement p3=cn.prepareStatement(s2);
	
	ResultSet r1=p1.executeQuery();
	ResultSet r2=p2.executeQuery();
	ResultSet r3=p3.executeQuery();
	
	r1.next();
	r2.next();
	r3.next();
	int q1,q2,tot;
	float w1,w2,totw;
	int b1,b2,totb;
	
	q1=r1.getInt(1);
	q2=r2.getInt(1);
	tot=r3.getInt(1);
	
	w1=r1.getFloat(2);
	w2=r2.getFloat(2);
	totw=r3.getFloat(2);
	
	b1=r1.getInt(3);
	b2=r2.getInt(3);
	totb=r3.getInt(3);
	
			
%> 
 
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: linear-gradient(to top, #350563, #004298, #0073c0, #00a3da, #12d1eb);
  }
  
  table {
    width: 700px;
    border-collapse: collapse;
    background-image: linear-gradient(to left bottom, #1b17cc, #0058eb, #0080f6, #00a3f3, #00c2ec, #00c9f2, #00cff9, #00d6ff, #00c5ff, #00aeff, #7a8eff, #c45ffb);;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
  }
  
  th {
    padding: 12px;
    text-align: center;
    border: 1px solid #ddd;
    color: white;
  }
  td {
    padding: 12px;
    text-align: center;
    border: 1px solid #ddd;
    color: black;
  }
  
  
  th {
    background-color: black;
    font-weight: bold;
  }
  
  tr:nth-child(even) {
    background-image: linear-gradient(to left bottom, #17aacc, #00b1c7, #00b7bc, #00bcad, #00c09a, #00c1ac, #00c2bb, #00c2c8, #00bbf8, #00a9ff, #6d84ff, #f417f5);
  }
  
  input[type="text"] {
  	text-align:center;
    width: 100%;
    box-sizing: border-box;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-family: rog fonts;
    color:#350563;
  }
</style>

<div class="container">
  <table>
    <tr>
      <th>Item/Customer</th>
      <th>Customer 1</th>
      <th>Customer 2</th>
      <th>Total</th>
    </tr>
    <tr>
      <td>Quantity</td>
      <td><input type="text" name="customer1_quantity" value=<%=q1%> disabled></td>
      <td><input type="text" name="customer2_quantity" value=<%=q2%> disabled></td>
      <td><input type="text" name="total_quantity" value=<%=tot%> disabled></td>
    </tr>
    <tr>
      <td>Weight</td>
      <td><input type="text" name="customer1_weight" value=<%=w1%> disabled></td>
      <td><input type="text" name="customer2_weight" value=<%=w2%> disabled></td>
      <td><input type="text" name="total_weight" value=<%=totw%> disabled></td>
    </tr>
    <tr>
      <td>Box Count</td>
      <td><input type="text" name="customer1_box" value=<%=b1%> disabled></td>
      <td><input type="text" name="customer2_box" value=<%=b2%> disabled></td>
      <td><input type="text" name="total_box" value=<%=totb%> disabled></td>
    </tr>
  </table>
</div>
