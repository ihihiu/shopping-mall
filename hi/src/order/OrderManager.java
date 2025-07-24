package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.dev.vo.MemberVO;

public class OrderManager {
	private Connection conn;

	private PreparedStatement pstmt;

	private ResultSet rs;

	private DataSource ds;

	public OrderManager() {
		try {
			// 1. JDBC Driver 로딩
			Class.forName("com.mysql.jdbc.Driver");

			// 2. Server Connection
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/normcore?serverTimezone=Asia/Seoul", "root",
					"1234");
		} catch (Exception e) {
			System.out.println("Conn error!!!!");
		}
	}

	// 주문하기

	public void insertOrder(OrderBean bean) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			
			pstmt = conn.prepareStatement("insert into webshop_order(product_no, quantity, id) values(?,?,?);");
			pstmt.setString(1, bean.getProduct_no());
			pstmt.setString(2, bean.getQuantity());
			pstmt.setString(3, bean.getId());
			pstmt.executeUpdate();


		} catch (Exception e) {

			System.out.println("insertOrder err : " + e);

		} finally {

			try {

				if (rs != null)
					rs.close();

				if (pstmt != null)
					pstmt.close();

				if (conn != null)
					conn.close();

			} catch (Exception e2) {

				// TODO: handle exception

			}

		}

	}

	public ArrayList<OrderBean> getOrder(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<OrderBean> list = new ArrayList<OrderBean>();

		try {
		
			pstmt = conn.prepareStatement("select * from webshop_order where id=? order by no desc;");
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
	
			while (rs.next()) {

				OrderBean bean = new OrderBean();
				bean.setNo(rs.getString("no"));
				bean.setProduct_no(rs.getString("product_no"));
				bean.setQuantity(rs.getString("quantity"));
				bean.setId(rs.getString("id"));
				list.add(bean);

			}

		} catch (Exception e) {

			System.out.println("getOrder err : " + e);

		} finally {

			try {

				if (rs != null)
					rs.close();

				if (pstmt != null)
					pstmt.close();

				if (conn != null)
					conn.close();

			} catch (Exception e2) {

				// TODO: handle exception

			}

		}

		return list;

	}

}
