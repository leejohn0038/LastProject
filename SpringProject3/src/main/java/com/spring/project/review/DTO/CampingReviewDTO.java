package com.spring.project.review.DTO;

import java.sql.Date;

import com.spring.project.utill.PageSearchVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CampingReviewDTO extends PageSearchVO{
	private int review_id;
	private String member_id;
	private int contentId;
	private String title;
	private Date reg_date;
	private Date up_date;
	private String review;
	private String imgUrl;
	private int starRanking;
	private int views;
	private int reviewGreate;
	private int decl;
	private int total;
	private int rn;
	private String order;
}
