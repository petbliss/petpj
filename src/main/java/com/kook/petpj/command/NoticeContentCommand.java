package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.NoticeDto;
import com.kook.petpj.util.Constant;

public class NoticeContentCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		String nid = request.getParameter("nId");
		System.out.println(nid);
		NoticeDto dto = mdao.contentView(nid);
		if(dto != null) {
			model.addAttribute("notice_content_view",dto);
		}
	}

}
