package kr.or.eutchapedia.login.controller;

import java.io.PrintWriter;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sun.mail.iap.Response;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@RestController
public class FindPasswordController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/findpassword")
	public ModelAndView findpassword() {
		ModelAndView mv = new ModelAndView("user/member/find_password1");

		return mv;
	}
	
//	@RequestMapping(value="/findpassword", method= {RequestMethod.GET, RequestMethod.POST})
//	public String findpw(@RequestBody MemberVo memberVo) throws Exception {
//		System.out.println("폼에서 받아온 eamil값 : " + memberVo);
//		
//		return 
//		
//	}


	@RequestMapping(value = "/findpassword2")
	public ModelAndView findpassword2() {
		ModelAndView mv = new ModelAndView("user/member/find_password2");

		return mv;
	}

	@RequestMapping(value = "/findpassword3")
	public ModelAndView findpassword3() {
		ModelAndView mv = new ModelAndView("user/member/find_password3");

		return mv;
	}


	@RequestMapping(value = "/findpasswordcomplete")
	public ModelAndView findpasswordcomplete() {
		ModelAndView mv = new ModelAndView("user/member/find_password_complete");

		return mv;
	}
}
