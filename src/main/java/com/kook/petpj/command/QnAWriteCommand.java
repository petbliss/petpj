package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class QnAWriteCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String writer = request.getParameter("qWriter");
		String title = request.getParameter("qTitle");
		String content = request.getParameter("qContent");
		
		mdao.qwrite(writer,title,content);
	}

}