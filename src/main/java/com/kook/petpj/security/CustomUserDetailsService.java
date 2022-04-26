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
//UserDetailsService 인터페이스는 DB에서 유저 정보를 가져오는 역할을 한다

public class CustomUserDetailsService implements UserDetailsService{
	//Spring Security에서 사용자의 정보를 담는 인터페이스는 UserDetails 인터페이스이다
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		//loadUserByUsername DB에서 유저 정보를 불러오는 중요한 메소드
		//username은 id를 의미
		
		pjDao mdao = Constant.mdao;
		JoinDto dto = mdao.login(username);
		System.out.println("dto " + dto);
		if(dto == null) {
			//id에 해당하는 레코드 없음
			System.out.println("null"); //로그인 실패
			throw  new UsernameNotFoundException("No user found with username");
		}
		String pw = dto.getPpw(); //이값은 DB에서 가져온 ppw이므로 암호화된 패스 워드
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		//access권한인 role은 여러개를 가질수 있어 collextion처리
		// role값(권한 구분 값, ROLE_USER,ROLE_ADMIN,ROLE_MANAGE 등)을 저장하는 리스트 객체
		//db에 authority컬럼을 주고 저장했다면 dto.getAuthority()로 얻은 값을 
		//new SimpleGrantedAuthority("얻은값")
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		UserDetails user = new User(username, pw , roles);
		//spring security에서 UserDetails객체를 이용하여 로그인 체크 및 설정
		Constant.username = username; 
		return user; 
	}
}