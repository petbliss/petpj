package com.kook.petpj.dao;

import java.util.ArrayList;
import java.util.List;

import com.kook.petpj.dto.FAQDto;
import com.kook.petpj.dto.JoinDto;
import com.kook.petpj.dto.NoticeDto;
import com.kook.petpj.dto.ProductDto;
import com.kook.petpj.dto.QNADto;

public interface pjIDao {
	//====join==========
	public String join(JoinDto dto);
	
	//===login====
	public JoinDto login(String pid);
	//아이디 찾기
	public JoinDto find_id(String email);
	
	
	
	//======= notice- 김유진 ========
	
	public ArrayList<NoticeDto> list();
	public void nwrite(String writer, String pw, String title, String content);
	public NoticeDto contentView(String id);
	public void modify(String nId, String nWriter, String nPw, String nTitle, String nContent);
	public void delete(String nId);
	public void upHit(String nId);
	public ArrayList<NoticeDto> pageList(String pageNo);
	
	//======== FAQ =========
	public ArrayList<FAQDto> flist();
	public void fwrite(String name, String title, String content);
	public FAQDto fcontentView(String id);
	public void fmodify(String fId, String fName, String fTitle, String fContent);
	public void fdelete(String fId);
	public void upHit1(String fId);
	public ArrayList<FAQDto> pageList1(String pageNo1);
	
	//========== QnA ===========
	public ArrayList<QNADto> qlist();
	public void qwrite(String writer,String title,String content);
	public QNADto qcontentView(String id);
	public void qmodify(String qId, String qWriter, String qTitle, String qContent);
	public void qdelete(String qId);
	public QNADto QnA_reply_view(String qId);
	public void qreply(String qId, String qWriter, String qTitle, String qContent, String qSecret, String qGroup, String qStep, String qIndent);
	public void upHit2(String qId);
	public void qreplyShape(String qGroup, String qStep);
	public ArrayList<QNADto> pageList2(String pageNo2);
	
	//김유진
	
	//김태석
	//=======product======
	public ArrayList<ProductDto> productList();
	public String productWrite(ProductDto pdto);
	public ProductDto productDetailView(String aPhoto);
}
	//김태석
