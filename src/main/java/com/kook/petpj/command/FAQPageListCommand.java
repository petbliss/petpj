package com.kook.petpj.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.FAQDto;
import com.kook.petpj.util.Constant;

public class FAQPageListCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		String pageNo = request.getParameter("pageNo");
		ArrayList<FAQDto> dtos = mdao.pageList1(pageNo);
		request.setAttribute("flistContent", dtos);
	}

}
