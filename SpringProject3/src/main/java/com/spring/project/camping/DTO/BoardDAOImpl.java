package com.spring.project.camping.DTO;



import javax.inject.Inject;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import org.apache.ibatis.session.SqlSession;

@Repository
@Primary
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;

	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.insert", boardVO);
		
	}

	

	
}
