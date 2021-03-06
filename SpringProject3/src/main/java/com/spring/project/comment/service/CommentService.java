package com.spring.project.comment.service;

import com.spring.project.comment.DTO.CommentSearchVO;
import com.spring.project.comment.DTO.CommentVO;

public interface CommentService {
	
	public CommentVO[] getComments(CommentVO vo);
	
	public int CommentCnt();
	
	public int blind(CommentVO vo);
	
	public void addComment(CommentVO comment);
	public void deleteComment(Integer commentId);
	public void commentReport(Integer commentId, Integer reportNum);
	public Integer getCommentReport(Integer commentId);
}
