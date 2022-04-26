package com.kook.petpj.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.QNADto;
import com.kook.petpj.util.Constant;

public class QnAListCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		ArrayList<QNADto> dtos = mdao.qlist();
		//request.setAttribute("listContent", dtos);
		model.addAttribute("qlistContent", dtos);
	}

}
