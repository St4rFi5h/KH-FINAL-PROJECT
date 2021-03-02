package kr.or.eutchapedia.board.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.board.controller.service.QnaService;
import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.QnaVO;

@Controller
public class QnaController {
	@Autowired
    private QnaService service;
    
    /**
     * 게시판 조회
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/qna/list.do")
    public String boardList(@ModelAttribute("vo") QnaVO vo, Model model) throws Exception{
        String memberEmail = "admin@admin.com";
        List<QnaVO> list = service.selectBoardList(vo, memberEmail);

        
        model.addAttribute("list", list);
        
        return "/user/board/qna/qna_list(admin)";
    }
    
    /**
     * 글쓰기 폼
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/qna/writeForm.do")
    public String writeBoardForm() throws Exception{
        
        return "/user/board/qna/qna_write";
    }
    
    /**
     * 게시글 등록
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/qna/write.do")
    public String write(@ModelAttribute("vo") QnaVO vo, Model model, HttpServletRequest request) throws Exception{
    	String qnaTitle = request.getParameter("qnaTitle");
        String qnaContent = request.getParameter("qnaContent");   
        
        vo.setQnaTitle(qnaTitle);
        vo.setQnaContent(qnaContent);
        System.out.println("타이틀 값 들어옴"+vo.getQnaTitle());
        
        int result = service.insertBoard(vo);
        
        return "redirect:/qna/list.do";
    }
    
    /**
     * 게시글 조회
     * @param boardVO
     * @param model
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/qna/viewContent.do")
    public String viewForm(@ModelAttribute("vo") QnaVO vo, Model model, HttpServletRequest request) throws Exception{
        
        int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
        vo.setQnaNo(qnaNo);
        
        QnaVO resultVO = service.selectBoardByCode(vo);
        
        model.addAttribute("result", resultVO);
        
        return "/user/board/qna/qna_list(admin)";
    }
    
    /**
     * 게시글 수정
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    /*
    @RequestMapping(value="/qna/updateboard.do")
    public String updateBoard(@ModelAttribute("vo") QnaVO vo, Model model) throws Exception{
        
        try{
            
            service.updateBoard(vo);
            
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/qna/list.do";
        
    }
    */
    //수정페이지
    @RequestMapping(value="/updateView", method = RequestMethod.GET)
    public ModelAndView updateForm(@RequestParam int qnaNo) throws Exception{
       ModelAndView mv = new ModelAndView();
       System.out.println("페이지 = " + qnaNo);
       
       QnaVO vo = service.detail(qnaNo);
       mv.addObject("qna", vo);
       mv.setViewName("/user/board/qna/qna_edit");
       return mv;
    }
    
    //수정
    @RequestMapping(value="/update.do", method = RequestMethod.POST)
    public String updateFaq(@ModelAttribute("vo") QnaVO vo, Model model)throws Exception {
          	service.update(vo);
            return "redirect:/qna/list.do";
    }
    
    
    
    
    
    
    
    //상세 페이지 
    @RequestMapping("/detail.qna/{qnaNo}")
    //@RequestMapping("/qna_list(admin)/{qnaNo}")
    public String detail(int qnaNo, Model model) throws Exception {
       model.addAttribute("detail", service.detail(qnaNo));
       return "redirect:/qna/list.do";

    }
    
    
    //답글페이지
    @RequestMapping(value="/qna/reply", method = RequestMethod.GET)
    public ModelAndView replyPage(@RequestParam long qnaNo, HttpServletRequest request, Model model) throws Exception {
    	String qnaContent = request.getParameter("qna");
    	System.out.println("들어온거니????????????????"+qnaContent);
    	
    	
    	ModelAndView mv = new ModelAndView();
    	
    	System.out.println("넘어온다면 말해줘 :" + qnaNo);
    	
    	QnaVO vo = service.detail(qnaNo);
    	model.addAttribute("qnaContent", qnaContent);
		mv.addObject("qna", vo);
		mv.setViewName("/user/board/qna/qna_reply");
		

    	
        return mv;
    }
    
    //답글 등록
    @RequestMapping("/qna/reply.do")
    public String reply(QnaVO vo, BindingResult result, HttpServletRequest request) {
    	service.reply(vo);
    	/*
    	try {
    	String qnaTitle = request.getParameter("qnaTitle");
        String qnaContent = request.getParameter("qnaContent");  
    
        vo.setQnaTitle(qnaTitle);
        vo.setQnaContent(qnaContent);
        
        
    	}catch(NumberFormatException e) {
    		
    	}catch (Exception e) {
    		
    	}
    	 */
    	return "redirect:/qna/list.do";
        

    }	
    
    
    
}
