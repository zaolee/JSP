package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import java.util.Map;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.io.IOException;

public class Cookies {

	private Map<String, Cookie> cookieMap = new java.util.HashMap<String, Cookie>();

	public Cookies(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]); // {"name":cookies[0], "id":cookies[1]}
			}
		}
	}

	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}

	public String getValue(String name) throws IOException {
		Cookie cookie = cookieMap.get(name);
		if (cookie == null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(), "utf-8");
	}

	public boolean exists(String name) {
		return cookieMap.get(name) != null;
	}

	public static Cookie createCookie(String name, String value) throws IOException {
		return new Cookie(name, URLEncoder.encode(value, "utf-8"));
	}

	// 메소드 오버로딩
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setPath(path); // 쿠키가 적용되는 url를 지정한다
		cookie.setMaxAge(maxAge); // 쿠키 유효 기간 설정한다.
		return cookie;
	}

	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge)
			throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}

}