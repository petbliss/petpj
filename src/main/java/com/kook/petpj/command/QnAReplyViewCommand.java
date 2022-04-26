package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.QNADto;
import com.kook.petpj.util.Constant;

public class QnAReplyViewCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		
		String qid = request.getParameter("qId");
		
		System.out.println(qid);
		
		QNADto dto = mdao.QnA_reply_view(qid);		
		
		model.addAttribute("QnA_reply_view", dto);
	}

}
