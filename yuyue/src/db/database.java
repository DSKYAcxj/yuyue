package db;


import java.util.ArrayList;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

import bean.*;


public class database {
	private static Connection con; 
	private static PreparedStatement stmt;
	private static ResultSet rs;
	
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
	
	
	
	public static boolean addevent(event et){
		
	    boolean flag=false;
	    try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("insert into event "+"values(?,?,?,?,?,?,?)");
			stmt.setString(1,et.getid());
			stmt.setString(2,et.gett_name());
			stmt.setString(3,et.gets_name());
			stmt.setString(4,et.getdate());
			stmt.setString(5,et.gettime());
			stmt.setString(6,et.getdidian());
			stmt.setString(7,et.getbeizhu());
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
    }
	
	
	public static boolean deleteevent(String id){
		boolean flag=false;
		try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("delete from event where id= '"+id+"'");
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
	}
	
     public static ArrayList<event> showt_name(String t_name){
	 	
		ArrayList<event> etinfo = new ArrayList<event>();
		try{
			System.out.println("event³É¹¦!!!");
			con=DBConnection.getConnection();
			System.out.println("1!!!");
			stmt=con.prepareStatement("select * from event where t_name= '"+t_name+"'");
			System.out.println(t_name);
			rs=stmt.executeQuery();
			while(rs.next()){
				System.out.println("2!!!");
				event et = new event();
				et.setid(rs.getString("id"));
				System.out.println("ID = "+et.getid());
				et.sett_name(rs.getString("t_name"));
				System.out.println(et.gett_name());
				et.sets_name(rs.getString("s_name"));
				et.setdate(rs.getString("date"));
				et.settime(rs.getString("time"));
				et.setdidian(rs.getString("didian"));
				et.setbeizhu(rs.getString("beizhu"));
				etinfo.add(et);
			}
			System.out.println("3!!!");
		}catch(SQLException e){
			System.out.println("No!!!");
			etinfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return etinfo;
}

     

     public static ArrayList<event> shows_name(String s_name){
 	 	
 		ArrayList<event> etinfo = new ArrayList<event>();
 		try{
 			con=DBConnection.getConnection();
 			stmt=con.prepareStatement("select * from event where s_name= '"+s_name+"'");
 			rs=stmt.executeQuery();
 			while(rs.next()){
 				event et = new event();
 				et.setid(rs.getString("id"));
 				et.sett_name(rs.getString("t_name"));
 				et.sets_name(rs.getString("s_name"));
 				et.setdate(rs.getString("date"));
 				et.settime(rs.getString("time"));
 				et.setdidian(rs.getString("didian"));
 				et.setbeizhu(rs.getString("beizhu"));
 				etinfo.add(et);
 			}
 		}catch(SQLException e){
 			etinfo=null;
 		}if(rs!=null){
 			try{
     			rs.close();
     			}catch(SQLException e){}
 		}
 		DBConnection.Close(con, stmt);
 		return etinfo;
 }

     /*
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
	*/
     public static event queryid(String name){
 		event tchname = new event();
 	    ResultSet rs=null;
 	    try{
 			con=DBConnection.getConnection();
 			stmt=con.prepareStatement("select * from event where id= '"+name+"'");
 			rs=stmt.executeQuery();
 			while(rs.next()){
 				tchname.setid(rs.getString("id"));
 				tchname.sett_name(rs.getString("t_name"));
 				tchname.sets_name(rs.getString("s_name"));
 				tchname.setdate(rs.getString("date"));
 				tchname.settime(rs.getString("time"));
 				tchname.setdidian(rs.getString("didian"));
 				tchname.setbeizhu(rs.getString("beizhu"));
 			}
 		}catch(SQLException e){
 			tchname=null;
 		}if(rs!=null){
 			try{
     			rs.close();
     			}catch(SQLException e){}
 		}
 		DBConnection.Close(con, stmt);
 		return tchname;
 	}
     
     public static teacher querytruename(String name){
 		teacher tchname = new teacher();
 	    ResultSet rs=null;
 	    try{
 			con=DBConnection.getConnection();
 			stmt=con.prepareStatement("select * from teacher where truename= '"+name+"'");
 			rs=stmt.executeQuery();
 			while(rs.next()){
 				tchname.setname(rs.getString("name"));
 				tchname.setpsword(rs.getString("psword"));
 				tchname.settruename(rs.getString("truename"));
 				tchname.setmail(rs.getString("mail"));
 			}
 		}catch(SQLException e){
 			tchname=null;
 		}if(rs!=null){
 			try{
     			rs.close();
     			}catch(SQLException e){}
 		}
 		DBConnection.Close(con, stmt);
 		return tchname;
 	} 
     
	public static teacher queryt_name(String name){
		teacher tchname = new teacher();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from teacher where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				tchname.setname(rs.getString("name"));
				tchname.setpsword(rs.getString("psword"));
				tchname.settruename(rs.getString("truename"));
				tchname.setmail(rs.getString("mail"));
			}
		}catch(SQLException e){
			tchname=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return tchname;
	}
	
	public static student querys_name(String name){
		student stuname = new student();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from student where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				stuname.setname(rs.getString("name"));
				stuname.setpsword(rs.getString("psword"));
				stuname.settruename(rs.getString("truename"));
				stuname.setmail(rs.getString("mail"));
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