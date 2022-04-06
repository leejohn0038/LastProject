package com.spring.project.camping.DTO;


import lombok.Data;

@Data
public class CampingVO {

	private String contentId;
	private String facltNm;
	private String lineIntro;
	private String addr1;
	private String addr2;
	private String firstImageUrl;
	private String doNm;
	private String sigunguNm;
	private String lctCl;
	private String facltDivNm;
	private String induty;
	private String themaEnvrnCl;
	
	private String total; // total�� db �÷��� ���� �ȉ�
	private String mapX;
	private String mapY;
	private String tagId;
	
	private String intro;
	private String tel;
	private String homepage;
	private String operDeCl;
	
	//�ܵ�, �ļ⼮, ��ũ, �ڰ�, ����
	private String siteBottomCl1;
	private String siteBottomCl2;
	private String siteBottomCl3;
	private String siteBottomCl4;
	private String siteBottomCl5;
	
	private String gnrlSiteCo;		// �Ϲݾ߿��� ����
	private String autoSiteCo;		// �ڵ����߿��� ����
	private String glampSiteCo;		// �۷��� ����
	private String caravSiteCo;		// ī��� ����
	
	private String sitedStnc;		// ����Ʈ���� �Ÿ�
	
	private String sbrsCl;			// �δ�ü�
	private String sbrsEtc;			// �δ�ü� ��Ÿ
	private String posblFcltyCl;	// �ֺ��̿밡�ɽü�
	private String posblFcltyEtc;	// �ֺ��̿밡�ɽü���Ÿ
	
	private String eqpmnLendCl;		// ķ�������뿩
	private String animalCmgCl;		// �ֿϵ���
	
	private int views;
	private int rn;
	
}

