package com.spring.project.member.mapper;


import com.spring.project.member.DTO.MemberVO;

public interface MemberDataMapper {
	
	public int idChk(MemberVO vo);
	
	public int signin(MemberVO vo);
	
	public int join(MemberVO vo);
}
