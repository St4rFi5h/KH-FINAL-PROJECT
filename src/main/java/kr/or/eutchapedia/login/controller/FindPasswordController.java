package kr.or.eutchapedia.login.controller;

import java.io.PrintWriter;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.Model;
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
	
	
	/*
	 * @RequestMapping(value = "/findpassword", method = RequestMethod.POST) public
	 * ModelAndView findpasword(HttpServletRequest request, String memberEmail,
	 * HttpServletResponse response_email) throws Exception {
	 * 
	 * //랜덤 난수 생성해서 이메일로 보내고 인증번호 입력하면 비밀번호 변경할 수 있는 페이지로 이동
	 * 
	 * Random r = new Random(); int dice = r.nextInt(157211)+48271;
	 * 
	 * String setfrom = "eutchapedia.contact@gmail.com"; String tomail =
	 * request.getParameter(memberEmail); //받는 사람 이메일 String title =
	 * "비밀번호 찾기 인증 이메일입니다."; //제목 String content =
	 * 
	 * System.getProperty("line.separator")+ System.getProperty("line.separator")+
	 * "안녕하세요 회원님 읏차피디아를 이용해 주셔서 감사합니다." +System.getProperty("line.separator")+
	 * System.getProperty("line.separator")+ "비밀번호 찾기 인증번호는 " +dice+ "입니다."
	 * +System.getProperty("line.separator")+ System.getProperty("line.separator")+
	 * "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; //내용 try {
	 * 
	 * MimeMessage message = mailSender.createMimeMessage(); MimeMessageHelper
	 * messageHelper = new MimeMessageHelper(message, true, "UTF-8");
	 * 
	 * messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
	 * messageHelper.setTo(tomail); // 받는사람 이메일 messageHelper.setSubject(title); //
	 * 메일제목은 생략이 가능하다 messageHelper.setText(content); // 메일 내용
	 * 
	 * mailSender.send(message);
	 * 
	 * }catch(Exception e) { System.out.println(e); }
	 * 
	 * ModelAndView mv = new ModelAndView();
	 * mv.setViewName("/user/member/find_password2"); mv.addObject("dice", dice);
	 * mv.addObject("memberEmail", memberEmail);
	 * 
	 * System.out.println("mv : " + mv);
	 * 
	 * PrintWriter out_email = response_email.getWriter();
	 * out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
	 * 
	 * 
	 * }
	 */
	
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
