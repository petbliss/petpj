package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class FAQModifyCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String fId = request.getParameter("fId");
		String fName = request.getParameter("fName");
		String fTitle = request.getParameter("fTitle");
		String fContent = request.getParameter("fContent");
		
		mdao.fmodify(fId, fName, fTitle, fContent);
	}

}