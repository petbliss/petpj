package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class QnAModifyCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String qId = request.getParameter("qId");
		String qWriter = request.getParameter("qWriter");
		String qTitle = request.getParameter("qTitle");
		String qContent = request.getParameter("qContent");
		
		mdao.qmodify(qId, qWriter, qTitle, qContent);
	}

}
