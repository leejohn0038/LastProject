package com.spring.project.comment.DTO;

import com.spring.project.utill.PageSearchVO;

import lombok.Data;

@Data
public class CommentVO extends PageSearchVO{
	private Integer comment_id;      
	private String post_id;    
	private String member_id;
	private String category_id;      
	private String comments; 
	private String blindComment;
	private String blind;
	private int classnum;      
	private int ordernum;      
	private int groupnum;      
	private int decl;      
	private int view;      
	private int rn;
	private int total;  
	private String order;
	
	public void blinding() {
		setBlind("true");
		setMember_id("admin");
		setBlindComment("부적절한 내용이므로 블라인드 처리되었습니다");
	}
}
