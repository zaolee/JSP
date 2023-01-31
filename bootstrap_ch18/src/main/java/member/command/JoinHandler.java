package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.DuplicateIdException;
import member.service.JoinRequest;
import member.service.JoinService;
import mvc.command.CommandHandler;

public class JoinHandler implements CommandHandler {
	
	private static final String FORM_VIEW = "/WEB-INF/view/member/joinForm.jsp";
	private JoinService joinService = new JoinService(); // 이거 db관련된거
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		if (req.getMethod().equalsIgnoreCase("GET")) { // get 방식이면 ~~
			return processForm(req, res); // 로그인폼
		} else if (req.getMethod().equalsIgnoreCase("POST")) { // post 방식이면 ~~
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		JoinRequest joinReq = new JoinRequest(); // 자바빈 객체 (dto, data transfer)
		joinReq.setEmail(req.getParameter("email"));
		joinReq.setName(req.getParameter("name"));
		joinReq.setPassword(req.getParameter("password"));
		joinReq.setConfirmPassword(req.getParameter("confirmPassword"));
		// 스프링에서는 이름만 동일하면 알아서 맵핑됨.
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		joinReq.validate(errors);
		
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		try {
			joinService.join(joinReq); // join서비스에 객체 넘김
			// 제이쿼리에 알람창으로 가입 완료 됐다 하고 로그인 폼 창으로 넘어가는것도 ㄱㅊ을듯
			return "/WEB-INF/view/member/loginForm.jsp";
		} catch (DuplicateIdException e) {
			errors.put("duplicateId", Boolean.TRUE);
			return FORM_VIEW;
		}
	}

}
