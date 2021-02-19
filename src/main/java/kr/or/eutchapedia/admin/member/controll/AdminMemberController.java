package kr.or.eutchapedia.admin.member.controll;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.StaffInfo;
import kr.or.eutchapedia.admin.movie.service.MovieService;

@RequestMapping("/admin")
@RestController
public class AdminMemberController {
	@RequestMapping("/selectmember")
	public ModelAndView selectMember() {
		ModelAndView mv = new ModelAndView("admin/member/selectMember");
		return mv;
		
	}
	
	
	@RequestMapping("/blockmember")
	public ModelAndView blockmember() {
		ModelAndView mv = new ModelAndView("admin/member/blockMember");
		return mv;
		
	}
}
