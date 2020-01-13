package user;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



/*import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
*/
public class UserDAO {

	private Connection conn; // 데이터베이스에 접근하기 위한 객체
	private PreparedStatement pstmt;
	private ResultSet rs; // 정보를 담을 수 있는 변수를 생성

	public UserDAO() {
        try {
            //생성자
            String dbURL="jdbc:mysql://db4free.net:3306/mmh0705?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";                             
            String dbID="baeksiin";
            String dbPassword="dmadkr6tkfa4";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
            System.out.println("됐다!");
            
        }catch(Exception e){
        	e.printStackTrace();
        	System.out.println("오류!!!");
        }
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO user VALUES(?, ?, ?, ?, ?) ";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			 String dbURL="jdbc:mysql://db4free.net:3306/mmh0705?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";                             
	            String dbID="baeksiin";
	            String dbPassword="dmadkr6tkfa4";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection(dbURL,dbID,dbPassword);
	            System.out.println("getConnection됐다!");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("에러 ㅠㅠ");
		}
		return con;
	}
	
	public static List<User> getAllRecords() {
		List<User> list = new ArrayList<User>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from user");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setUserID(rs.getString("userID"));
				u.setUserPassword(rs.getString("userPassword"));
				u.setUserName(rs.getString("userName"));
				u.setUserGender(rs.getString("userGender"));
				u.setUserEmail(rs.getString("userEmail"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int delete(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from user where userID=?");
			ps.setString(1, u.getUserID());
			status = ps.executeUpdate();
		    System.out.println("삭제 완료!");
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("삭제 실패ㅠㅠ");
		}

		return status;
	}

}
