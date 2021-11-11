package member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

public class LogoutService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
		
		//특정 세션 제거
		session.removeAttribute("memName");
		session.removeAttribute("memId");
					
		//모든 세션 제거
		session.invalidate();//무효화
		
		//응답
		return "/member/logout.jsp";
	}

}
