package com.kook.petpj.security;

import java.util.ArrayList;

import java.util.Collection;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.JoinDto;
import com.kook.petpj.util.Constant;
//UserDetailsService �������̽��� DB���� ���� ������ �������� ������ �Ѵ�

public class CustomUserDetailsService implements UserDetailsService{
	//Spring Security���� ������� ������ ��� �������̽��� UserDetails �������̽��̴�
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		//loadUserByUsername DB���� ���� ������ �ҷ����� �߿��� �޼ҵ�
		//username�� id�� �ǹ�
		
		pjDao mdao = Constant.mdao;
		JoinDto dto = mdao.login(username);
		System.out.println("dto " + dto);
		if(dto == null) {
			//id�� �ش��ϴ� ���ڵ� ����
			System.out.println("null"); //�α��� ����
			throw  new UsernameNotFoundException("No user found with username");
		}
		String pw = dto.getPpw(); //�̰��� DB���� ������ ppw�̹Ƿ� ��ȣȭ�� �н� ����
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		//access������ role�� �������� ������ �־� collextionó��
		// role��(���� ���� ��, ROLE_USER,ROLE_ADMIN,ROLE_MANAGE ��)�� �����ϴ� ����Ʈ ��ü
		//db�� authority�÷��� �ְ� �����ߴٸ� dto.getAuthority()�� ���� ���� 
		//new SimpleGrantedAuthority("������")
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		UserDetails user = new User(username, pw , roles);
		//spring security���� UserDetails��ü�� �̿��Ͽ� �α��� üũ �� ����
		Constant.username = username; 
		return user; 
	}
}