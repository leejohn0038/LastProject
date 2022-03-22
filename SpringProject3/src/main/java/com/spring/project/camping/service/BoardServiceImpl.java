package com.spring.project.camping.service;

import javax.inject.Inject;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.spring.project.camping.DTO.BoardDAO;
import com.spring.project.camping.DTO.BoardVO;


@Service
@Primary
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	
}

