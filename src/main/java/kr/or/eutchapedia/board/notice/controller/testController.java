package kr.or.eutchapedia.board.notice.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class testController {

		@RequestMapping("/test")
		private ModelAndView test() throws Exception{
			ModelAndView mv = new ModelAndView("/user/board/notice/boardtest");

			mv.addObject("name", "tttttttttest");
			
			List<String> testList = new ArrayList<String>();
			testList.add("a");
			testList.add("b");
			testList.add("c");
			
			mv.addObject("list", testList);
			return mv;
		}
}
