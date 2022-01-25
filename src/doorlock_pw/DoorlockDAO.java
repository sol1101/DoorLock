package doorlock_pw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DoorlockDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_b_4_1025";
			String db_pw = "smhrd4";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public DoorLockVO getCustomerPW(String reservation_num) {
		DoorLockVO vo = null;
		conn();
		try {
			String sql = "select reservation_key from reservations where reservation_num = '2111040009'";
			psmt = conn.prepareStatement(sql);
			//psmt.setString(1, reservation_num);
			rs = psmt.executeQuery();
			if (rs.next()) {
				int mysensor = rs.getInt(1);
				System.out.println("getcusPW"+mysensor);
				vo = new DoorLockVO(mysensor);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		System.out.println("����� ���� ���" + vo.getDoorlockPW());
		
		return vo;
	}
	
	public DoorLockVO getRoomPW(String hotel_uid) {
		DoorLockVO vo = null;
		conn();
		try {
			String sql = "select default_key from rooms where hotel_uid='A1'";
			psmt = conn.prepareStatement(sql);
			//psmt.setString(1, hotel_uid);
			rs = psmt.executeQuery();
			if (rs.next()) {
				int mysensor = rs.getInt(1);
				System.out.println(mysensor);
				vo = new DoorLockVO(mysensor);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		System.out.println("�� ��й�ȣ"+vo.getDoorlockPW());
		
		return vo;
	}
	
	public DoorLockVO update(String doorlockPW, String reservation_num) {
		DoorLockVO vo = null;
		conn();
		String sql1 = "update reservations set reservation_key = ?  where reservation_num = '2111040009'";
		try {
			psmt = conn.prepareStatement(sql1);
			psmt.setString(1, doorlockPW);
			//psmt.setString(2, reservation_num);
			
			psmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		vo = getCustomerPW(reservation_num);
		return vo;
	}
}
