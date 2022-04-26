package com.kook.petpj.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import com.kook.petpj.dao.pjIDao;
import com.kook.petpj.dto.JoinDto;
import com.kook.petpj.util.Constant;

public class JoinCommand implements pjCommand{

	@Override
	public void execute(Model model, HttpServletRequest request) {
		BCryptPasswordEncoder passwordEncoder= Constant.passwordEncoder;
		
		String bId = request.getParameter("pid");
		String bPw = request.getParameter("ppw");
		String bName = request.getParameter("pname");
		String bBirth = request.getParameter("pbirth");
		String bMail = request.getParameter("pmail");
		
		String bPw_org = bPw; //bpw�� ��ȣȭ �Ǳ��� password�ε� bPw_org�� ����
		bPw = passwordEncoder.encode(bPw_org);//���⼭ bPw�� ��ȣȭ��
		System.out.println(bPw + " size " + bPw.length());
		
		JoinDto dto = new JoinDto(bId,bPw,bName,bBirth,bMail);
		
		pjIDao mdao = Constant.mdao;
		
		String result = mdao.join(dto);
		
		request.setAttribute("result", result);	//controller���� ��� ���
	}
}