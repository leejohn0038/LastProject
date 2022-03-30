package com.spring.project.comment.DTO;

import lombok.Data;

@Data
public class CommentVO {
	private String comment_id;      
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
	
	public void blinding() {
		setBlind("true");
		setMember_id("admin");
		setBlindComment("�������� �����̹Ƿ� ����ε� ó���Ǿ����ϴ�");
	}
}
