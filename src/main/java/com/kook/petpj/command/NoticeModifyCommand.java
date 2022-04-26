package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class NoticeModifyCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String nId = request.getParameter("nId");
		String nWriter = request.getParameter("nWriter");
		String nPw = request.getParameter("nPw");
		String nTitle = request.getParameter("nTitle");
		String nContent = request.getParameter("nContent");
		
		mdao.modify(nId, nPw, nWriter, nTitle, nContent);

	}

}
