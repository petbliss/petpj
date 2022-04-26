package com.kook.petpj.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.kook.petpj.dto.FAQDto;
import com.kook.petpj.dto.JoinDto;
import com.kook.petpj.dto.NoticeDto;
import com.kook.petpj.dto.ProductDto;
import com.kook.petpj.dto.QNADto;

public class pjDao implements pjIDao {
   @Autowired
   private SqlSession sqlSession;

   // ======= join ==========
   @Override
   public String join(JoinDto dto) {
      int res = sqlSession.insert("join", dto); 
      System.out.println(res);
      String result = null;
      if (res > 0)
         result = "success";
      else
         result = "failed";

      return result;
   }

   // ======login======
   @Override
   public JoinDto login(String bId) {
      System.out.println(bId);
      JoinDto result = sqlSession.selectOne("login", bId);
      return result;
   }

   //아이디 찾기
   @Override
   public JoinDto find_id(String email) {
      System.out.println("find_id");
//         JoinDto result = sqlSession.selectOne("id",email);
//         return result;
      return sqlSession.selectOne("find_id", email);
   }

   // ====== notice- 김유진 =======
   @Override
   public ArrayList<NoticeDto> list() {
      ArrayList<NoticeDto> result = (ArrayList) sqlSession.selectList("list");
      return result;
   }

   @Override
   public void nwrite(String writer, String pw, String title, String content) {
      NoticeDto dto = new NoticeDto(0, writer, pw, title, content, null, 0);
      sqlSession.insert("nwrite", dto);
   }

   @Override
   public NoticeDto contentView(String id) {
      upHit(id); // hit수 처리, 내용보기에 hit수가 더해져야함
      int idNum = Integer.parseInt(id);
      NoticeDto result = sqlSession.selectOne("contentView", idNum);
      return result;
   }

   @Override
   public void modify(String nId, String nWriter, String nPw, String nTitle, String nContent) {
      int idNum = Integer.parseInt(nId);
      NoticeDto dto = new NoticeDto(idNum, nWriter, nPw, nTitle, nContent, null, 0);
      sqlSession.update("modify", dto);
   }

   @Override
   public void delete(String nId) {
      int idNum = Integer.parseInt(nId);
      sqlSession.delete("delete", idNum); //삭제이므로 sqlSession의 delete메서드 사용
   }

   @Override
   public void upHit(String nId) {
      int idNum = Integer.parseInt(nId);
      sqlSession.update("upHit", idNum);
   }

   @Override
   public ArrayList<NoticeDto> pageList(String pageNo) {
      int page = Integer.parseInt(pageNo);
      int start = (page - 1) * 10 + 1;
      System.out.println("start : " + start);
      ArrayList<NoticeDto> result = (ArrayList) sqlSession.selectList("pageList", start);
      System.out.println(result);
      return result;
   }

   // ======== QnA =========
   @Override
   public ArrayList<QNADto> qlist() {
      ArrayList<QNADto> result = (ArrayList) sqlSession.selectList("qlist");
      return result;
   }

   @Override
   public void qwrite(String writer, String title, String content) {
      QNADto dto = new QNADto(0, writer, title, content, null, 0, 0, 0, 0, 0);
      sqlSession.insert("qwrite", dto);
   }

   @Override
   public QNADto qcontentView(String id) {
      upHit2(id);
      int idNum = Integer.parseInt(id);
      QNADto result = sqlSession.selectOne("qcontentView", idNum);
      return result;
   }

	@Override
	public void qmodify(String qId, String qWriter, String qTitle, String qContent) {
	   int idNum = Integer.parseInt(qId); // db와 BoardDto에서는 int이므로 형변환
		QNADto dto = new QNADto(idNum, qWriter, qTitle, qContent, null, 0, 0, 0, 0, 0);
		sqlSession.update("qmodify", dto); // 수정이므로 sqlSession의 update메서드를 사용
   }

   @Override
   public void qdelete(String qId) {
      int idNum = Integer.parseInt(qId);
      sqlSession.delete("qdelete", idNum);
   }

   @Override
   public QNADto QnA_reply_view(String qId) {
      int idNum = Integer.parseInt(qId);
      QNADto result = sqlSession.selectOne("QnA_reply_view", idNum);
      // 게시판 목록번호에 해당하는 레코드
      System.out.println("QnA_reply_view" + result);
      
      return result;
   }

   @Override
   public void qreply(String qId, String qWriter, String qTitle, String qContent, String qSecret, String qGroup,
         String qStep, String qIndent) {
      System.out.println("qGroup :" + qGroup);
      qreplyShape(qGroup, qStep);
      //  db컬럼이 number인것은 모두 int로 변환(dto와도 일치)
      int idNum = Integer.parseInt(qId);
      int iSecret = Integer.parseInt(qSecret);
      int iGroup = Integer.parseInt(qGroup);
      int iStep = Integer.parseInt(qStep);
      int iIndent = Integer.parseInt(qIndent);

      QNADto dto = new QNADto(idNum, qWriter, qTitle, qContent, null, iSecret, 0, iGroup, iStep, iIndent);

      sqlSession.insert("qreply", dto);
   }

   @Override
   public void upHit2(String qId) {
      int idNum = Integer.parseInt(qId);
      sqlSession.update("upHit2", idNum);
   } 

   @Override
   public void qreplyShape(String qGroup, String qStep) {
      int iGroup = Integer.parseInt(qGroup);
      int iStep = Integer.parseInt(qStep);
      QNADto dto = new QNADto(0, null, null, null, null, 0, 0, iGroup, iStep, 0);
      sqlSession.update("qreplyShape", dto);
   }

   @Override
   public ArrayList<QNADto> pageList2(String pageNo) {
      int page = Integer.parseInt(pageNo);
      int start = (page - 1) * 10 + 1;
      System.out.println("start : " + start);
      ArrayList<QNADto> result = (ArrayList) sqlSession.selectList("pageList2", start);
      System.out.println(result);
      return result;
   }

   // ======== FAQ =========
   @Override
   public ArrayList<FAQDto> flist() {
      ArrayList<FAQDto> result = (ArrayList) sqlSession.selectList("flist");
      return result;
   }

   @Override
   public void fwrite(String name, String title, String content) {
      FAQDto dto = new FAQDto(0, name, title, content, null, 0, 0, 0, 0);
      sqlSession.insert("fwrite", dto);
   }

   @Override
   public FAQDto fcontentView(String id) {
      upHit1(id);
      int idNum = Integer.parseInt(id);
      FAQDto result = sqlSession.selectOne("fcontentView", idNum);
      return result;
   }

   @Override
   public void fmodify(String fId, String fName, String fTitle, String fContent) {
      int idNum = Integer.parseInt(fId);
      FAQDto dto = new FAQDto(idNum, fName, fTitle, fContent, null, 0, 0, 0, 0);
      sqlSession.update("fmodify", dto);
   }

   @Override
   public void fdelete(String fId) {
      int idNum = Integer.parseInt(fId);
      sqlSession.delete("fdelete", idNum); 
   }

   @Override
   public void upHit1(String fId) {
      int idNum = Integer.parseInt(fId);
      sqlSession.update("upHit1", idNum);
   }

   @Override
   public ArrayList<FAQDto> pageList1(String pageNo) {
      int page = Integer.parseInt(pageNo);
      int start = (page - 1) * 10 + 1;
      System.out.println("start : " + start);
      ArrayList<FAQDto> result = (ArrayList) sqlSession.selectList("pageList1", start);
      System.out.println(result);
      return result;
   }

	// 김유진

	// 김태석
   // ======product======
   @Override
   public ArrayList<ProductDto> productList() {
      ArrayList<ProductDto> result = (ArrayList)sqlSession.selectList("productList"); 
      return result;
   }
   
   @Override
   public String productWrite(ProductDto pdto) {
      System.out.println("producrwrite");
      String res;
      int result = sqlSession.insert("productWrite",pdto);
      if(result == 1)
         res = "success";
      else
         res = "failed";
      
      return res;
   }
   
   @Override
   public ProductDto productDetailView(String aPhoto) {
      ProductDto result = sqlSession.selectOne("productDetailView",aPhoto);
      
      return result;
   }
   // 김태석
}