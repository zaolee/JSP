package article.service;

import java.util.List;

import article.model.Article;

public class ArticlePage {

	private int total; // 11
	private int currentPage; // 2
	private List<Article> content;
	private int totalPages; // 2
	private int startPage; // 1
	private int endPage; // 5 -> 2

	public ArticlePage(int total, int currentPage, int size, List<Article> content) {
		this.total = total;
		this.currentPage = currentPage;
		this.content = content;
		if (total == 0) {
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else {
			totalPages = total / size; // 11 / 10 = 1
			if (total % size > 0) { // 11 % 10 = 1
				totalPages++; // 2
			} // 이런식으로 토탈페이지가 바뀌는거... 글이 10개를 한묶음을 기준으로 토탈 페이지가 늘어남..
			int modVal = currentPage % 5; // 2 % 5 = 2
			startPage = currentPage / 5 * 5 + 1; // 2 / 5 * 5 + 1 = 1 즉 스타트페이지는 1
			if (modVal == 0) startPage -= 5; 
			// 스타트페이지는 걍 1인거 그럼 이거 왜 함..???
			// modVal 페이지의 페이징,, 페이지가 5개 이상이면 [다음] 이란게 생겨 그럼 1~5 말고도 6~10이 뜨고 [다음] 이 생김..
			
			endPage = startPage + 4; // 5
			if (endPage > totalPages) endPage = totalPages; // 이건 뭐냐?? 5 -> 2 로 바뀌는..
		}
	}

	public int getTotal() {
		return total;
	}

	public boolean hasNoArticles() {
		return total == 0;
	}

	public boolean hasArticles() {
		return total > 0;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public List<Article> getContent() {
		return content;
	}

	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
}
