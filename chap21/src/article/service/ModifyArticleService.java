package article.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ModifyArticleService {

	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();

	public void modify(ModifyRequest modReq) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Article article = articleDao.selectById(conn, 
					modReq.getArticleNumber());
			if (article == null) {
				throw new ArticleNotFoundException();
			}
			if (!canModify(modReq.getUserId(), article)) { // 로그인한 사람이 작성자인지 확인하는 로직(작성자 = 로그인한 자 되어야 수정가능)
				throw new PermissionDeniedException();
			}
			articleDao.update(conn, 
					modReq.getArticleNumber(), modReq.getTitle());
			contentDao.update(conn, 
					modReq.getArticleNumber(), modReq.getContent());
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (PermissionDeniedException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private boolean canModify(String modfyingUserId, Article article) {
		return article.getWriter().getId().equals(modfyingUserId); // 작성자의 id 와 modfyingUserId가 같은지
	}
}
