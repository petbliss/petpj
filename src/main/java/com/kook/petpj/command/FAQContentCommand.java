package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.FAQDto;
import com.kook.petpj.util.Constant;

public class FAQContentCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		
		pjDao mdao = Constant.mdao;
		String fid = request.getParameter("fId");
		System.out.println(fid);
		FAQDto dto = mdao.fcontentView(fid);
		if(dto != null) {
			model.addAttribute("FAQ_content_view",dto);
		}
	}

}