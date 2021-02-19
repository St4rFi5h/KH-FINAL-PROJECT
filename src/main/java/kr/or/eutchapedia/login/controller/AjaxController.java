package kr.or.eutchapedia.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@RestController
public class AjaxController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/emailchk", method=RequestMethod.POST)
	public int emailchk(MemberVo memberVo) throws Exception {
		int result = memberService.emailchk(memberVo);
		
		return result;
	}

}
