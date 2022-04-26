package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.ProductDto;
import com.kook.petpj.util.Constant;

public class ProductDetailsCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		 pjDao mdao = Constant.mdao;
		 String aPhoto = request.getParameter("aPhoto");		 
		 System.out.println(aPhoto);
		 
		 ProductDto dto = mdao.productDetailView(aPhoto);
		 if(dto != null) {
			 model.addAttribute("product_view",dto);
			 System.out.println(dto.getaPhoto());
		 }
	}

}