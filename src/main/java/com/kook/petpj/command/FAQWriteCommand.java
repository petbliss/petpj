package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class FAQWriteCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String name = request.getParameter("fName");
		String title = request.getParameter("fTitle");
		String content = request.getParameter("fContent");
		
		mdao.fwrite(name,title,content);
	}

}
