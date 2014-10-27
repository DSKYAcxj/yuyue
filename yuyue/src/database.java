//import java.util.ArrayList;
//import java.util.List;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

import bean.student;
import bean.teacher;

public class database {
	private static Connection con; 
	private static PreparedStatement stmt;
	//private static ResultSet rs;
	
	/*public static ArrayList<teacher> showAllInfo(String name){
		
		ArrayList<teacher> tchinfo = new ArrayList<teacher>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from book where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				teacher tch = new teacher();
				tch.setName(rs.getString("name"));
				tch.setPsword(rs.getString("psword"));
				tch.setFabu(rs.getString("fabu"));
				tch.setBeiyuyue(rs.getString("beiyuyue"));
				tchinfo.add(tch);
			}
		}catch(SQLException e){
			tchinfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return tchinfo;
	}
	
	*/
	
	public static boolean addInfo_T(teacher tch){
		
	    boolean flag=false;
	    try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("insert into teacher "+"values(?,?,?,?)");
			stmt.setString(1,tch.getName());
			stmt.setString(2,tch.getPsword());
			stmt.setString(3,tch.getFabu());
			stmt.setString(4,tch.getBeiyuyue());
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
    }
	
public static boolean addInfo_S(student tch){
		
	    boolean flag=false;
	    try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("insert into student "+"values(?,?,?)");
			stmt.setString(1,tch.getName());
			stmt.setString(2,tch.getPsword());
			stmt.setString(3,tch.getYuyue());
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
    }
	
	public static boolean deleteInfo_S(String name){
		boolean flag=false;
		try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("delete from student where name ='"+name+"'");
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
	}
	
	public static boolean deleteInfo_T(String name){
		boolean flag=false;
		try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("delete from teacher where name ='"+name+"'");
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
	}
	
	public static teacher QueryName_T(String name){
		teacher tchname = new teacher();
	    ResultSet rs=null;
	    try{
	    	System.out.println("-");
			con=DBConnection.getConnection();
			if(con == null){
				System.out.println("error!!!");
			}
			else System.out.println("right!!!");
			stmt=con.prepareStatement("select * from teacher where name= '"+name+"'");
			rs=stmt.executeQuery();
			System.out.println("11");
			while(rs.next()){
				tchname.setName(rs.getString("name"));
				tchname.setPsword(rs.getString("psword"));
				tchname.setFabu(rs.getString("fabu"));
				tchname.setBeiyuyue(rs.getString("beiyuyue"));
			}
			System.out.println("12");
		}catch(SQLException e){
			System.out.println("--");
			tchname=null;
		}if(rs!=null){
			try{
				System.out.println("13");
				System.out.println(rs.getString("name"));
    			rs.close();
    			}catch(SQLException e){}
		}
		System.out.println("14");
		DBConnection.Close(con, stmt);
		return tchname;
	}
	
	public static student QueryName_S(String name){
		student stuname = new student();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from student where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				stuname.setName(rs.getString("name"));
				stuname.setPsword(rs.getString("psword"));
				stuname.setYuyue(rs.getString("yuyue"));
			}
		}catch(SQLException e){
			stuname=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return stuname;
	}
}
	/*public static book QueryInfo(String title){
		book book = new book();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from book where title= '"+title+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				book.setIsbn(rs.getString("isbn"));
				book.setTitle(rs.getString("title"));
				book.setAuthorid(rs.getString("authorid"));
				book.setPublishdate(rs.getString("publishdate"));
				book.setPrice(rs.getString("price"));
				book.setPublisher(rs.getString("publisher"));
			}
		}catch(SQLException e){
			book=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return book;
	}
*/
/*	
	
////////
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static List QueryBooks(String authorid){
		List list=new ArrayList();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from book where authorid= '"+authorid+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				book book = new book();
				book.setIsbn(rs.getString("isbn"));
				book.setTitle(rs.getString("title"));
				book.setAuthorid(rs.getString("authorid"));
				book.setPublishdate(rs.getString("publishdate"));
				book.setPrice(rs.getString("price"));
				book.setPublisher(rs.getString("publisher"));
				list.add(book);
			}
		}catch(SQLException e){
			list=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return list;
	}
	
	
	///////////////
	
	
	*/
	/*
	public static author QueryName(String name){
		author bookname = new author();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from author where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				bookname.setAuthorid(rs.getString("authorid"));
				bookname.setName(rs.getString("name"));
				bookname.setAge(rs.getString("age"));
				bookname.setCountry(rs.getString("country"));
			}
		}catch(SQLException e){
			bookname=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return bookname;
	}
	
	public static boolean deleteInfo(String title){
		boolean flag=false;
		try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("delete from book where title ='"+title+"'");
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
	}
}
*/