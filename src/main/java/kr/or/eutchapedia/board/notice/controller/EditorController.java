package kr.or.eutchapedia.board.notice.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import kr.or.eutchapedia.board.notice.domain.SmarteditorVo;

@Controller
public class EditorController {
	
	@RequestMapping(value = "/photoUpload", method = RequestMethod.POST)
	public String simpleImageUploader(HttpServletRequest request, SmarteditorVo smarteditorVo) {
		String callback = smarteditorVo.getCallback();
		String callback_func = smarteditorVo.getCallback_func();
		String file_result = "";
		
		MultipartFile multiFile = smarteditorVo.getFiledata();
		
		try {
			if(multiFile != null && multiFile.getOriginalFilename() != null &&
					multiFile.getOriginalFilename().equals("")) {
					String oriName = multiFile.getOriginalFilename();
					String ext = oriName.substring(oriName.lastIndexOf(".")+1);
					String defaultPath = request.getSession().getServletContext().getRealPath("/");
					String path = defaultPath + "static" + File.separator + "upload" + File.separator;             
		            File file = new File(path);
		            System.out.println("path:"+path);
		            //디렉토리 존재하지 않을경우 디렉토리 생성
		            if(!file.exists()) {
		                file.mkdirs();
		            }
		            //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
		            String realname = UUID.randomUUID().toString() + "." + ext;
		            
		            ///////////////// 서버에 파일쓰기 /////////////////
		            multiFile.transferTo(new File(path+realname));
		            file_result += "&bNewLine=true&sFileName="+oriName+"&sFileURL=/static/upload/"+realname;
		        } else {
		            file_result += "&errstr=error";
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return "redirect:" + callback + "?callback_func="+callback_func+file_result;
	}

}
