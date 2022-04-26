package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class NoticeWriteCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String writer = request.getParameter("nWriter");
		String pw = request.getParameter("nPw");
		String title = request.getParameter("nTitle");
		String content = request.getParameter("nContent");
		
		mdao.nwrite(writer,pw,title,content);
	}

}
