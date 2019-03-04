package com.java.util;



import com.java.bean.*;


public class PageUtil {
	
	
	
	/*public static int getAllCount(String sql,String con){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count = 0;
		try{
			conn = MyConnection.getCon();
			sql = "SELECT COUNT(*) FROM ("+sql+")";
			ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+con+"%");
			rs = ps.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			MyConnection.close(rs, ps, conn);
		}
		return count;
	}
	public static int getAllCount(String sql,String con,String state){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count = 0;
		try{
			conn = MyConnection.getCon();
			sql = "SELECT COUNT(*) FROM ("+sql+")";
			ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+con+"%");
			ps.setString(2, state);
			rs = ps.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			MyConnection.close(rs, ps, conn);
		}
		return count;
	}*/
}
