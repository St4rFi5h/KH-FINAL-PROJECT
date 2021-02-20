package kr.or.eutchapedia.movie.detail.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.eutchapedia.movie.detail.domain.CommentListVo;
import kr.or.eutchapedia.movie.detail.domain.CommentPage;
import kr.or.eutchapedia.movie.detail.repository.CommentMapper;

@Service
@Transactional
public class CommentDao {

	@Autowired
	CommentMapper mapper;

	// 코멘트 기본 select
	public Map<String, Object> selectCommentList(CommentPage page) {

		Map<String, Object> commentListMap = new HashMap<>();
		List<CommentListVo> commentList = new ArrayList<>();

		try {
			int totalListSize = mapper.totalListSize(page);
			
			page.setTotalListSize(totalListSize);
			if (page.getNowPage() == 0) {
				page.setNowPage(1);
			}
			
			page.pageCompute();

			for (CommentListVo vo : commentList) {
				if (vo.getPhoto() == null) {
					vo.setPhoto("/img/movie/profile.svg");
				}
			}

			commentList = mapper.selectCommentList(page);

			commentListMap.put("page", page);
			commentListMap.put("commentList", commentList);
			commentListMap.put("commentCount", totalListSize);
			commentListMap.put("movieDocId", commentList.get(0).getMovieDocId());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return commentListMap;
	}

}
