package db;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
	static private String user = "root";
	static private String password = "";
	//static private String user = "uL6J9zgfx4hFJ";
	//static private String password = "pnRZPrBWEKwl6";
	//static private String user = "xl3z0434lo";
	//static private String password = "41i53iizm32yzx5242xj1j5x2km1ki53z0wi051m";
	private Connection con=null;
	private PreparedStatement ps = null; 
	private ResultSet rs = null;
	
	public static Connection getConnection(){
		System.out.println("right!!!");
		String DBDRIVER="com.mysql.jdbc.Driver";
		
		//String DBURL="jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_0501yuyue2";
	    String DBURL="jdbc:mysql://localhost:3306/yuyue";
		//String DBURL="jdbc:mysql://10.4.26.93:3306/d142621c367c7416e9f468169c2e581a8";
	    Connection con = null;
	    try{
	    	System.out.println("right!!!");
	    	Class.forName(DBDRIVER);
	    	con = DriverManager.getConnection(DBURL,user,password);	
	    	System.out.println("right!!!");
	    }catch(ClassNotFoundException e){
	    	System.out.println("error!!!");
			System.err.println(e.getMessage());
			System.exit(1);
		}catch(SQLException e){
			System.out.println("error!!!");
			System.err.println(e.getMessage());
		}
		return con;
	}
	public void close(){
		try{
			if(rs != null){
				rs.close();
				rs = null;
			}
			if(ps != null){
				ps.close();
				ps = null;
			}
			if(con != null){
				con.close();
				con = null;
			}
		}
		catch(Exception ex){
			System.err.println("close error :"+ex.getMessage());
		}
	}
	public static void Close(Connection con,Statement stmt){
        if(stmt!=null){
        	try{
    			stmt.close();
    			}catch(SQLException e){}
    		}
    	if(con!=null){
    		try{
    			con.close();
    		    }catch(SQLException e){}
    		}
    	}  
}
