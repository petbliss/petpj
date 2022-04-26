package com.kook.petpj.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.ProductDto;
import com.kook.petpj.util.Constant;

public class ProductListCommand implements pjCommand {

	@Override
	public void execute(Model model, HttpServletRequest request) {
		pjDao mdao = Constant.mdao;
		ArrayList<ProductDto> dtos = mdao.productList();
		request.setAttribute("productList", dtos);
	}

}