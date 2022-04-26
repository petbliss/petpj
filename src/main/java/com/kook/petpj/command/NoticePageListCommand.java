package com.kook.petpj.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.NoticeDto;
import com.kook.petpj.util.Constant;

public class NoticePageListCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		String pageNo = request.getParameter("pageNo");
		ArrayList<NoticeDto> dtos = mdao.pageList(pageNo);
		request.setAttribute("listContent", dtos);
	}

}