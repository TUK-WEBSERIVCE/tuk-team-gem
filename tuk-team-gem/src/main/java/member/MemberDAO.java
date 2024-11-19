package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	final String JDBC_URL = "jdbc:mysql://localhost/jspdb?allowPublicKeyRetrieval=true&useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=UTC";
	
	public Connection open() {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL,"root","");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//회원가입
	public void join(Member m) throws Exception {
		
		Connection conn = open();
		String sql = "insert into member(name, loginId, password, email) values(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		try(conn; pstmt) { 
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getLoginId());
			pstmt.setString(3, m.getPassword());
			pstmt.setString(4, m.getEmail());
			pstmt.executeUpdate();
		}
		
	}
	
	//로그인
	public Member login(String loginId, String password) throws Exception{
		Connection conn = open();
		String sql = "select * from member where loginId = ? and password = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try (conn; pstmt) {
            pstmt.setString(1, loginId);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                // 로그인 성공: 사용자 정보를 Member 객체로 반환
                Member member = new Member();
                member.setMemberId(rs.getInt("memberId"));
                member.setName(rs.getString("name"));
                member.setLoginId(rs.getString("loginId"));
                member.setEmail(rs.getString("email"));
                return member;
            } else {
                // 로그인 실패: null 반환
                return null;
            }
        }
		
	}

}
