package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.util.Constant;

public class QnAReplyCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String qId = request.getParameter("qId");
		String qWriter = request.getParameter("qWriter");
		String qTitle = request.getParameter("qTitle");
		String qContent= request.getParameter("qContent");
		String qSecret= request.getParameter("qSecret");
		String qGroup = request.getParameter("qGroup");
		String qStep = request.getParameter("qStep");
		String qIndent = request.getParameter("qIndent");
		
		mdao.qreply(qId, qWriter, qTitle, qContent, qSecret, qGroup, qStep, qIndent);
	}

}
