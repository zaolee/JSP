package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class JoinService {

	private MemberDao memberDao = new MemberDao();

	public void join(JoinRequest joinReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			Member member = memberDao.selectByEmail(conn, joinReq.getEmail());
			if (member != null) {
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}

			memberDao.insert(conn, new Member(joinReq.getEmail(), joinReq.getName(), joinReq.getPassword(), new Date()));
			conn.commit(); // 22행부터 29행까지 트랜잭션임
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
