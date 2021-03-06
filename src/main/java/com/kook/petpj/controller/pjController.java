package com.kook.petpj.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kook.petpj.command.FAQContentCommand;
import com.kook.petpj.command.FAQDeleteCommand;
import com.kook.petpj.command.FAQListCommand;
import com.kook.petpj.command.FAQModifyCommand;
import com.kook.petpj.command.FAQPageListCommand;
import com.kook.petpj.command.FAQWriteCommand;
import com.kook.petpj.command.JoinCommand;
import com.kook.petpj.command.NoticeContentCommand;
import com.kook.petpj.command.NoticeDeleteCommand;
import com.kook.petpj.command.NoticeListCommand;
import com.kook.petpj.command.NoticeModifyCommand;
import com.kook.petpj.command.NoticeWriteCommand;
import com.kook.petpj.command.ProductDetailsCommand;
import com.kook.petpj.command.ProductListCommand;
import com.kook.petpj.command.ProductWriteCommand;
import com.kook.petpj.command.QnAContentCommand;
import com.kook.petpj.command.QnADeleteCommand;
import com.kook.petpj.command.QnAListCommand;
import com.kook.petpj.command.QnAModifyCommand;
import com.kook.petpj.command.QnAPageListCommand;
import com.kook.petpj.command.QnAReplyCommand;
import com.kook.petpj.command.QnAReplyViewCommand;
import com.kook.petpj.command.QnAWriteCommand;
import com.kook.petpj.command.pjCommand;
import com.kook.petpj.dao.pjDao;
import com.kook.petpj.dto.ProductDto;
import com.kook.petpj.naver.NaverLoginBO;
import com.kook.petpj.util.Constant;

@Controller
public class pjController {
	
	private pjCommand mcom;

	private pjDao mdao;

	BCryptPasswordEncoder passwordEncoder;

	@Autowired
	public void setMDao(pjDao mdao) {
		this.mdao = mdao;
		Constant.mdao = mdao;
	}
	
	//??????????????????????????
	
	
	//??????????????????????????
	

	/* GoogleLogin */
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;

	@Autowired // OAuth2Parameters ????????? OAuth 2.0 ????????? ???????????? ??? ??????????????? ???????????? ??? ????????? ????????? ???????????? ??? ??????
	private OAuth2Parameters googleOAuth2Parameters;

	// NaverLoginBO
	private NaverLoginBO naverLoginBO;

	@Autowired // bean??????
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Autowired
	public void setPasswordEncoder(BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
		Constant.passwordEncoder = passwordEncoder;
	}

//	== ????????? ==
	@RequestMapping("/index")
	public String index() {
		System.out.println("index");
		return "index";
	}

//	====????????????====
	@RequestMapping("/info_company")
	public String info_company() {
		System.out.println("info_company");
		return "info_company";
	}

//	===????????????===
	@RequestMapping("/info_agreement")
	public String info_agreement() {
		System.out.println("info_agreement");
		return "info_agreement";
	}

//	====????????????????????????====
	@RequestMapping("/info_privacy")
	public String info_privacy() {
		System.out.println("info_privacy");
		return "info_privacy";
	}

	// ====== ???????????? ======
	@RequestMapping("/join_view")
	public String join_view() {
		return "join_view";
	}

	// ======= ????????? =======
	@RequestMapping("/login_view")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
		System.out.println("login_view");
		// social login url????????? ????????? ??????
		socialUrl(model, session);
		return "login_view";
	}

	// =======????????????========
	@RequestMapping("/logout_view")
	public String logout_view() {
		System.out.println("logout_view");
		return "logout_view";
	}

	@RequestMapping(value = "/join", produces = "application/text; charset=UTF8")
	@ResponseBody // jsp??? ?????? ??????????????? ????????? ????????? ????????? ??????
	public String join(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("join");
		mcom = new JoinCommand(); // join????????? ?????? command???????????? MiniCommand??????????????? ?????? ?????????
		mcom.execute(model, request);
		String result = (String) request.getAttribute("result");
		System.out.println(result);
		if (result.equals("success"))
			return "join-success";
		else
			return "join-failed";
	}

	@RequestMapping(value = "/processLogin", method = RequestMethod.GET)
	public ModelAndView processLogin(@RequestParam(value = "log", required = false) String log,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpSession session, Model pmodel) {
		System.out.println("processLogin");
		ModelAndView model = new ModelAndView();
		if (log != null && log != "") {
			// security form??? ?????? ???(a href="processLogin?log=1)?????? ????????? ??? ?????????
			model.addObject("log", "before login!");
		}
		if (error != null && error != "") {  // ???????????? ?????????????????? security?????? ??????(?????? 1)
			model.addObject("error", "Invalid username or password!");
		}
		if (logout != null && logout != "") { // ???????????? ????????? security?????? ??????(?????? 1)
			model.addObject("logout", "You've been logged out successfully.");
		}
		socialUrl(pmodel, session);
		model.setViewName("login_view");
		System.out.println("processLogin");
		return model;
	}

	// kakao access-token ?????????
	public String getKaKaoAccessToken(String authorize_code, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// URL????????? ???????????? ?????? ??? ??? ??????, POST ?????? PUT ????????? ????????? setDoOutput??? true??? ???????????????
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// kakao??? ??????????????? ???
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder(); // StringBuilder ?????? ????????? ?????????
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=385687872ded33b2b0a803cc75a516f8"); // ????????? ?????????
			sb.append("&redirect_uri=https://localhost:8443/petpj/kredirect");
			// ????????? ????????? ?????? ??????
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush(); // ???????????? ?????? ????????????
			// ?????? ????????? 200?????? ??????
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			// ????????? ?????? ?????? JSON????????? Response ????????? ????????????
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(result); // parse???????????? Object??????
			JSONObject jsonObj = (JSONObject) obj;
			access_Token = (String) jsonObj.get("access_token");
			refresh_Token = (String) jsonObj.get("refresh_token");
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
			// io????????? close
			br.close();
			bw.close();
		} catch (Exception e) {
			e.getMessage();
		}
		return access_Token;
	}

	// kakao access-token?????? ????????? ?????? ??????
	public HashMap<String, Object> getKaKaoUserInfo(String access_Token) {
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			// ????????? ????????? Header??? ????????? ??????
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			int responseCode = conn.getResponseCode(); // 200?????? ??????
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JSONParser parser = new JSONParser();
			Object obj = parser.parse(result);
			JSONObject jsonObj = (JSONObject) obj;
			String id = jsonObj.get("id").toString(); // ????????? String????????? ???????
			JSONObject properties = (JSONObject) jsonObj.get("properties");
			JSONObject kakao_account = (JSONObject) jsonObj.get("kakao_account"); // ???????????? ??????

			String accessToken = (String) properties.get("access_token");
			String nickname = (String) properties.get("nickname");
			String email = (String) kakao_account.get("email");// ???????????? ??????
			userInfo.put("accessToken", access_Token);
			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
			System.out.println("==============");
			System.out.println("nickname : " + nickname);
			System.out.println("email : " + email);
			System.out.println("==============");
		} catch (Exception e) {
			e.getMessage();
		}
		return userInfo;
	}

	@RequestMapping(value = "/kredirect", produces = "application/json; charset=UTF8")
	public String kredirect(@RequestParam String code, HttpServletResponse response, Model model) throws Exception {
		System.out.println("#########" + code);
		String access_Token = getKaKaoAccessToken(code, response);
		System.out.println("###access_Token#### : " + access_Token);
		// ??? access_Token??? ???????????? kakao??? ????????? ????????? ?????????
		HashMap<String, Object> userInfo = getKaKaoUserInfo(access_Token);
		return "socialLogin"; // ???????????????
	}

	@RequestMapping("/nredirect")
	public ModelAndView callback(@RequestParam String code, @RequestParam String state, HttpSession session)
			throws Exception {
		System.out.println("state :" + state);
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
		System.out.println(apiResult);
		// String????????? apiResult??? json????????? ??????
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		System.out.println("naver user?????? : " + response_obj);
		// response??? nickname??? ??????
		String name = (String) response_obj.get("name");
		System.out.println("name: " + name);
		return new ModelAndView("socialLogin", "result", apiResult);
		// addObject??? setViewName??? ????????? ???????????? ????????? ????????? ?????? ????????? ??????????????? view jsp??????,
		// ???????????? ?????????,???????????? ?????????
	}

	// social?????????
	public void socialUrl(Model model, HttpSession session) {

		// kakao code kakao developer???????????? ?????? ??????
		// https://tyrannocoding.tistory.com/61
		String kakao_url = "https://kauth.kakao.com/oauth/authorize" + "?client_id=385687872ded33b2b0a803cc75a516f8"
				+ "&redirect_uri=https://localhost:8443/petbliss/kredirect" + "&response_type=code";
		model.addAttribute("kakao_url", kakao_url);

		// naver social login??????
		// ????????? ID??? ?????? URL??? ???????????? ????????? NaverLoginBO???????????? getAuthorizationUrl????????? ??????
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		System.out.println("?????????" + naverAuthUrl);
		model.addAttribute("naver_url", naverAuthUrl);
	}

	@RequestMapping("/Login")
	public String Login(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
		System.out.println("Login");
		socialUrl(model, session);
		return "login_view";
	}


	@RequestMapping("/find_id")
	public String find_id() {
		System.out.println("find_id");
		return "find_id";
	}

	@RequestMapping("/find_pw")
	public String find_pw() {
		System.out.println("find_pw");
		return "find_pw";
	}

	// ========== Service_center ==========
	@RequestMapping("/Service_center")
	public String Service_center() {
		System.out.println("Service_center??? ??????");
		return "Service_center";
	}
	
	//?????????
	//========== Notice ==========	
	@RequestMapping("/notice")
	public String notice(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("notice?????? ????????");
		mcom = new NoticeListCommand();
		mcom.execute(model,  request);
		model.addAttribute("user",Constant.username);
		return "notice";
	}
	
	@RequestMapping("/notice_write_view")
	public String notice_write_view(Model model) {
		System.out.println("notice_write_view()");
		model.addAttribute("nWriter",Constant.username);
		return "notice_write_view";
	}
	
	@RequestMapping("/nwrite")
	public String nwrite(HttpServletRequest request,HttpServletResponse response,Model model)  {
		System.out.println("notice_write");
		mcom = new NoticeWriteCommand();
		mcom.execute(model, request);
		return "redirect:notice";
	}
	
	@RequestMapping("/notice_content_view")   //ajax??? ?????? ?????? ?????????????????? jsp??????
	public String notice_content_view(HttpServletRequest request, HttpServletResponse response, Model model) {
		mcom = new NoticeContentCommand();
		mcom.execute(model, request);
		model.addAttribute("user",Constant.username);
		if(model.containsAttribute("notice_content_view")) {
			String result = "success";
			System.out.println(result);
		}
		return "notice_content_view";
	}	
	
	@RequestMapping("/notice_modify")
	public String notice_modify(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("modify()");
		mcom = new NoticeModifyCommand();
		mcom.execute(model, request);
		return "redirect:notice";
	}
	
	@RequestMapping("notice_delete")
	public String notice_delete(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("notice_delete()");
		
		mcom = new NoticeDeleteCommand();
		mcom.execute(model, request);
		
		return "redirect:notice";
	}
	
	@RequestMapping("/notice_plist")
	public String plist(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("plist");
		System.out.println(request.getParameter("pageNo"));
		mcom = new NoticeListCommand();
		mcom.execute(model, request);
		return "notice_plist";
	}
	
	//========== QnA =============
	@RequestMapping("/QnA")
	public String QnA(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("QnA??? ??????");
		mcom = new QnAListCommand();
		mcom.execute(model, request);
		model.addAttribute("user",Constant.username);
		return "QnA";
	}
	
	@RequestMapping("/QnA_write_view")  
	public String QnA_write_view(Model model) {
		System.out.println("QnA_write_view()");
		model.addAttribute("qWriter",Constant.username);
		return "QnA_write_view";
	}
	
	@RequestMapping("/qwrite")
	public String qwrite(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("QnA_write");
		mcom = new QnAWriteCommand();
		mcom.execute(model, request);		
		return "redirect:QnA";		
	}
	
	@RequestMapping("/QnA_content_view")
	public String QnA_content_view(HttpServletRequest request, HttpServletResponse response,Model model) {
		mcom = new QnAContentCommand();
		mcom.execute(model,request);
		model.addAttribute("user",Constant.username);
		if(model.containsAttribute("QnA_content_view")) {
			String result = "success";
			System.out.println(result);
		}
		return "QnA_content_view";
	}
	
	@RequestMapping("/QnA_modify") 
	public String QnA_modify(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("modify()");
		mcom = new QnAModifyCommand();
		mcom.execute(model,request);
		return "redirect:QnA";
	}
	
	@RequestMapping("/QnA_delete") 
	public String QnA_delete(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("delete()");
		
		mcom = new QnADeleteCommand();
		mcom.execute(model,request);
		
		return "redirect:QnA";
	}
	
	@RequestMapping("/QnA_plist")
	public String QnA_plist(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("QnA_plist");
		System.out.println(request.getParameter("pageNo2"));
		mcom = new QnAPageListCommand();
		mcom.execute(model, request);
		return "QnA_plist";
	}
	
	//========== Reply ==========
//	@Inject
//	ReplyService replyService;
//	// ?????? ??????
//	List<ReplyDto> reply = null;
//	reply = replyService.list(qId);
//	model.addAttribute("reply", reply);
	
	
//	@RequestMapping(value="/write", method= RequestMethod.POST)
//	public String posttWirte(ReplyDto vo) throws Exception {
//		replyService.write(vo);
//		
//		return "redirect:QnA_content_view?qId=" + vo.getqId();
//	}
	
	@RequestMapping("/QnA_reply_view") 
	public String reply_view(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("QnA_reply_view()");		
		mcom = new QnAReplyViewCommand();
		mcom.execute(model,request); 
		request.setAttribute("user",Constant.username);
		return "QnA_reply_view";
	}
	
	
	@RequestMapping("/qreply") 
	public String qreply(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("qreply()");		
		mcom = new QnAReplyCommand();
		mcom.execute(model,request);		
		return "redirect:QnA";
	}
	
	//========== FAQ ==========
	@RequestMapping("/FAQ")
	public String FAQ(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("FAQ??? ??????");
		mcom = new FAQListCommand();
		mcom.execute(model, request);
		model.addAttribute("user",Constant.username);
		return "FAQ";
	}
	
	@RequestMapping("/FAQ_write_view") 
	public String FAQ_write_view(Model model) {
		System.out.println("FAQ_write_view()");
		model.addAttribute("fName",Constant.username);
		return "FAQ_write_view";
	}
	
	@RequestMapping("/fwrite")
	public String fwrite(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("FAQ_write");
		mcom = new FAQWriteCommand();
		mcom.execute(model, request);
		return "redirect:FAQ";
	}
	
	@RequestMapping("/FAQ_content_view") 
	public String FAQ_content_view(HttpServletRequest request,
			HttpServletResponse response,Model model) {
		mcom = new FAQContentCommand();
		mcom.execute(model,request);
		model.addAttribute("user",Constant.username);
		if(model.containsAttribute("FAQ_content_view")) {
			String result = "success";
			System.out.println(result);
		}
		return "FAQ_content_view";
	}
	
	@RequestMapping("/FAQ_modify") 
	public String FAQ_modify(HttpServletRequest request,HttpServletResponse response, Model model) {
		System.out.println("fmodify()");
		mcom = new FAQModifyCommand();
		mcom.execute(model,request);
		return "redirect:FAQ";
	}
	
	@RequestMapping("/FAQ_delete") 
	public String FAQ_delete(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("fdelete()");
		
		mcom = new FAQDeleteCommand();
		mcom.execute(model,request);
		
		return "redirect:FAQ";
	}
	
	@RequestMapping("/FAQ_plist")
	public String FAQ_plist(HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println("FAQ_plist");
		System.out.println(request.getParameter("pageNo"));
		mcom = new FAQPageListCommand();
		mcom.execute(model, request);
		return "FAQ_plist";
	}
	//?????????
	
	//------------------------------------------------------------------//
	
	//?????????
	
	//======product======
			@RequestMapping("/product") 
			public String product(HttpServletRequest request,HttpServletResponse response,
					Model model,Authentication authentication) {
				System.out.println("product");
				mcom = new ProductListCommand();
				mcom.execute(model, request);
				
				
				UserDetails userDetails = (UserDetails) authentication.getPrincipal();
				Constant.username = userDetails.getUsername();
				System.out.println(userDetails.getUsername());
				Collection<? extends GrantedAuthority>  authorities = authentication.getAuthorities();
				String auth = authorities.toString(); 
				System.out.println(auth); 
				return "Product_view";
			}
			
			@RequestMapping("/pwrite_view")  
			public String pwrite_view() {
				System.out.println("pwrite_view");
				return "pwrite_reg_view";
			}
			
			@RequestMapping("product_write") 
			
			public String product_write (MultipartHttpServletRequest mtpRequest,Model model) {
				System.out.println("product_write");
				//String group = mtpRequest.getParameter("group");
				String qid = mtpRequest.getParameter("qId");
				String aname =  mtpRequest.getParameter("aName");
				String adesc =  mtpRequest.getParameter("aDesc");
				String aprice =  mtpRequest.getParameter("aPrice");
				String aphoto = null; 		
				
				
				MultipartFile mf = mtpRequest.getFile("aFile");
			
				String path ="D:/EZHG/HTML eclipse/petbliss/src/main/webapp/resources/images/";
				
				String path1 = "D:/tool/apache-tomcat-9.0.58/wtpwebapps/petbliss/resources/images/";
				
				String originFileName = mf.getOriginalFilename();
				long prename =  System.currentTimeMillis();
				long fileSize = mf.getSize(); 
				System.out.println("originFileName : " + originFileName);
				System.out.println("fileSize : " + fileSize);
				
				String safeFile = path + prename + originFileName; 
				String safeFile1 = path1 + prename + originFileName;
				
				aphoto = prename + originFileName; 
				
				ProductDto pdto = new ProductDto(aphoto,qid,aname,adesc,aprice);
				mtpRequest.setAttribute("pdto", pdto);
				mcom = new ProductWriteCommand(); 
				
				mcom.execute(model, mtpRequest);  
				Map<String, Object> map = model.asMap();
				String res = (String) map.get("result");
				
				if(res.equals("success")) {
					try {
						mf.transferTo(new File(safeFile));
						mf.transferTo(new File(safeFile1));
					}
					catch(Exception e) {
						e.getMessage();
					}
					return "redirect:product";
				}
				else {
					return "Product_view";
				}
				
			}
			
			@RequestMapping("/productDetails")
			
			public String productDetails(HttpServletRequest request,
						HttpServletResponse response,Model model) {
				System.out.println("productDetails??????????");
				mcom = new ProductDetailsCommand();
				mcom.execute(model,request);
				if(model.containsAttribute("Product_view")) {
					String result = "success";
					System.out.println(result);
				}
				return "ProductDetailsView";
			}
			
	//?????????
    
    //------------------------------------------------------------------//
    
    //?????????
	@RequestMapping("/Category_Dog_Feed")
	public String Category_Dog_Feed() {
		System.out.println("Category_Dog_Feed??? ??????");
		return "Category_Dog_Feed";
	}
	
	@RequestMapping("/Category_Dog_Cleaner")
	public String Category_Dog_Cleaner() {
		System.out.println("Category_Dog_Cleaner??? ??????");
		return "Category_Dog_Cleaner";
	}
	@RequestMapping("/Category_Dog_Articles")
	public String Category_Dog_Articles() {
		System.out.println("Category_Dog_Articles??? ??????");
		return "Category_Dog_Articles";
	}
	@RequestMapping("/Category_Dog_ETC")
	public String Category_Dog_ETC() {
		System.out.println("Category_Dog_ETC??? ??????");
		return "Category_Dog_ETC";
	}	   
	@RequestMapping("/Category_Cat_Feed")
	public String Category_Cat_Feed() {
		System.out.println("Category_Cat_Feed??? ??????");
		return "Category_Cat_Feed";
	}
	@RequestMapping("/Category_Cat_Cleaner")
	public String Category_Cat_Cleaner() {
		System.out.println("Category_Cat_Cleaner??? ??????");
		return "Category_Cat_Cleaner";
	}
	@RequestMapping("/Category_Cat_Articles")
	public String Category_Cat_Articles() {
		System.out.println("Category_Cat_Articles??? ??????");
		return "Category_Cat_Articles";
	}
	@RequestMapping("/Category_Cat_ETC")
	public String Category_Cat_ETC() {
		System.out.println("Category_Cat_ETC??? ??????");
		return "Category_Cat_ETC";
	}
	@RequestMapping("/Category_Others_Feed")
	public String Category_Others_Feed() {
		System.out.println("Category_Others_Feed??? ??????");
		return "Category_Others_Feed";
	}
	@RequestMapping("/Category_Others_Cleaner")
	public String Category_Others_Cleaner() {
		System.out.println("Category_Others_Cleaner??? ??????");
		return "Category_Others_Cleaner";
	}
	@RequestMapping("/Category_Others_Articles")
	public String Category_Others_Articles() {
		System.out.println("Category_Others_Articles??? ??????");
		return "Category_Others_Articles";
	}
	@RequestMapping("/Category_Others_ETC")
	public String Category_Others_ETC() {
		System.out.println("Category_Others_ETC??? ??????");
		return "Category_Others_ETC";
	}
	//?????????
    
}