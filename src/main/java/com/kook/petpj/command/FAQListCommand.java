package com.kook.petpj.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.FAQDto;
import com.kook.petpj.util.Constant;

public class FAQListCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		ArrayList<FAQDto> dtos = mdao.flist();
		request.setAttribute("flistContent", dtos);
	}

}
