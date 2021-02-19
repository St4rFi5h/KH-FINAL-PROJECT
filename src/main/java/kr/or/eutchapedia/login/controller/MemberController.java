//package kr.or.eutchapedia.login.controller;
//
//import javax.inject.Inject;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import kr.or.eutchapedia.login.service.MemberService;
//import kr.or.eutchapedia.login.vo.MemberVo;
//
//@Controller
//@RequestMapping("/member/*")
//public class MemberController {
//
//	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
//	
//	@Inject
//	MemberService service;
//
//	// 회원가입 get
//	@RequestMapping(value="/signup", method = RequestMethod.GET)
//	public void getSignup() throws Exception {
//		logger.info("get signup");
//		
//	}
//	
//	// 회원가입 post
//	public String postSignup(MemberVo vo) throws Exception {
//		logger.info("post signup");
//		
//		service.signup(vo);
//		return null;
//	}
//}