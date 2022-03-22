package com.spring.project.camping.DTO;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class BoardVO {
	
	private String title;
	private String name;
	private String content;
	private String gbsThumbImg;
	private String password;
}
