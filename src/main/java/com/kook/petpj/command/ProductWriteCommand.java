package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.ProductDto;
import com.kook.petpj.util.Constant;

public class ProductWriteCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		ProductDto pdto = (ProductDto)request.getAttribute("pdto");
		
		String result = mdao.productWrite(pdto);
		
		model.addAttribute("result",result);
	}

}