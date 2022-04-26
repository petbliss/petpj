package com.kook.petpj.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.QNADto;
import com.kook.petpj.util.Constant;

public class QnAPageListCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		String pageNo2 = request.getParameter("pageNo2");
		ArrayList<QNADto> dtos = mdao.pageList2(pageNo2);
		request.setAttribute("qlistContent", dtos);
	}

}
