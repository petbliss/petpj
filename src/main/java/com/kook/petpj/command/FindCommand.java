package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dao.pjIDao;
import com.kook.petpj.dto.JoinDto;
import com.kook.petpj.util.Constant;

public class FindCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		
		pjDao mdao = Constant.mdao;
		
		
		
		
		
		
		
		
		
		
		
	
//		// 아이디 찾기
//		@Override
//		public String find_id(HttpServletResponse response, String email) throws Exception {
//			response.setContentType("text/html;charset=utf-8");
//			PrintWriter out = response.getWriter();
//			String id = manager.find_id(email);
//			
//			if (id == null) {
//				out.println("<script>");
//				out.println("alert('가입된 아이디가 없습니다.');");
//				out.println("history.go(-1);");
//				out.println("</script>");
//				out.close();
//				return null;
//			} else {
//				return id;
//			}
//		}
		
//		//위랑 다른 로직
//		String bMail = request.getParameter("pmail");
//		
//		JoinDto dto = new JoinDto(bMail);
//		
//		
//		pjIDao mdao = Constant.mdao;
//		
//		JoinDto result = mdao.find_id(bMail);
//		
//		request.setAttribute("result", result);
//		model.addAttribute("id",result);
		
		
	}

}
