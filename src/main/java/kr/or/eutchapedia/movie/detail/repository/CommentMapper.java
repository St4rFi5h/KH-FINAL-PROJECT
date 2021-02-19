package kr.or.eutchapedia.movie.detail.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.movie.detail.domain.CommentListVo;
import kr.or.eutchapedia.movie.detail.domain.CommentPage;

@Repository
@Mapper
public interface CommentMapper {
	public int totalListSize(String movieDocId);
	public List<CommentListVo> selectCommentList(CommentPage page);
} 
