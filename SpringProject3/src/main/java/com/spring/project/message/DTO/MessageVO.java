package com.spring.project.message.DTO;

import java.sql.Date;

import lombok.Data;

@Data
public class MessageVO {
	private String member_id;
	private String msg;
	private Date send_date;
	private int read;
	
	public void messaging(String content, String blindContent) {
		String msg = String.format("����: %s / ����ε� ����:%s", content, blindContent);
		setMsg(msg);
	}
}
