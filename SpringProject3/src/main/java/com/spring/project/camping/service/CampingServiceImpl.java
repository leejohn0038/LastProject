package com.spring.project.camping.service;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.project.camping.DTO.CampingVO;
import com.spring.project.camping.DTO.SearchVO;
import com.spring.project.camping.mapper.CampingDataMapper;
import com.spring.project.review.DTO.CampingReviewDTO;
import com.spring.project.utill.PagingVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CampingServiceImpl implements CampingService{
	
	@Autowired
	CampingDataMapper dataMapper;

	Element body;
	
	@Override
	public void getSearchXML(String nowPage) throws  IOException, JDOMException {
		StringBuffer sb = new StringBuffer("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/basedList?");
		
		sb.append("ServiceKey=g0wEuuHHfi9739JVMZEXUYrz5%2F12c86SzjoT%2BGS5UmE2E8HC1u9N0I64ZUa3jHRh2l6%2FQdBpQ%2BDmGVWi1Ai0Vw%3D%3D");
		sb.append("&numOfRows=9");
		sb.append("&pageNo=" + nowPage);
		sb.append("&MobileOS=ETC");
		sb.append("&MobileApp=AppTest");
		
		URL url = new URL(sb.toString());
		
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestProperty("Content-Type","application/xml");
		
		conn.connect();
		SAXBuilder builder = new SAXBuilder();
		
		Document document = builder.build(conn.getInputStream());
		
		Element root = document.getRootElement();
		//��Ʈ�� �ڽ�!�̴ϱ� child�� �����Ѵ�!
		body = root.getChild("body");
	
	}
	
	@Override
	public void getAllXML() throws IOException, JDOMException {
		StringBuffer sb = new StringBuffer("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/basedList?");
		getSearchXML("1");
		int total = getTotal();
		
		sb.append("ServiceKey=g0wEuuHHfi9739JVMZEXUYrz5%2F12c86SzjoT%2BGS5UmE2E8HC1u9N0I64ZUa3jHRh2l6%2FQdBpQ%2BDmGVWi1Ai0Vw%3D%3D");
		sb.append("&MobileOS=ETC");
		sb.append("&MobileApp=AppTest");
		sb.append("&numOfRows=" + total);
		
		URL url = new URL(sb.toString());
		
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestProperty("Content-Type","application/xml");
		
		conn.connect();
		SAXBuilder builder = new SAXBuilder();
		
		Document document = builder.build(conn.getInputStream());
		
		Element root = document.getRootElement();
		body = root.getChild("body");
		
	}

	@Override
	public CampingVO[] getXMLData() {
		Element items = body.getChild("items");
		//items�ȿ��ִ� �ڽĵ��� �������� ! �������ϱ� ����Ʈ���߰��� ? Ÿ���� ������Ʈ !!
		List<Element> item_list = items.getChildren("item");
		CampingVO[] ar = new CampingVO[item_list.size()];
		
		int i = 0;
		for(Element item:item_list) {
			
			String contentId = item.getChildText("contentId");
			String facltNm = item.getChildText("facltNm");										//ķ���� �̸�
			String lineIntro = item.getChildText("lineIntro");									//���� ����
			
			String addr1 = item.getChildText("addr1");											
			String addr2 = item.getChildText("addr2");
			
			String firstImageUrl = item.getChildText("firstImageUrl") != null ? 
					item.getChildText("firstImageUrl") : "https://via.placeholder.com/300";
			
			String intro = item.getChildText("intro");
			String hvofBgnde = item.getChildText("hvofBgnde");
			String hvofEnddle = item.getChildText("hvofEnddle");
            String Intro=item.getChildText("Intro");
            String direction=item.getChildText("direction");
            String tel=item.getChildText("tel");
            String homepage=item.getChildText("homepage");
            String resveUrl=item.getChildText("resveUrl");
            String resveCl=item.getChildText("resveCl");
            String glamplnnerFcly=item.getChildText("glamplnnerFcly");
            String caravlnnerFcly=item.getChildText("caravlnnerFcly");
            String prmisnDe=item.getChildText("prmisnDe");
            String operPdCl=item.getChildText("operPdCl");
            String operDeCl=item.getChildText("operDeCl");
            String trlerAcmpnyAt=item.getChildText("trleAcpnyAt");
            String caravAcmpnyAt=item.getChildText("caravAcmpnyAt");
            String toiletCo=item.getChildText("toiletCo");
            String swrmCo=item.getChildText("swrmCo");
            String brazierCl=item.getChildText("brazierCl");
            String sbrsCl=item.getChildText("sbrsCl");
            String sbrsEtc=item.getChildText("sbrsEtc");
            String posblFcltyCl = item.getChildText("posblFcltyCl");
            String posblFclyEtc = item.getChildText("posblFclyEtc");
            String clturEventAt = item.getChildText("clturEventAt");
            String clturEvent = item.getChildText("clturEvent");
            String exprnProgrmAt = item.getChildText("exprnProgrmAt");
            String exprnProgrm =item.getChildText("exprnProgrm");
            String themaEnvrnCl =item.getChildText("themaEnvrnCl");
            String eqpmnLendCl = item.getChildText("eqpmnLendCl");
            String anmalCmgCl = item.getChildText("anmalCmgCl");
            String tourEraCl = item.getChildText("tourEraCl");
			
			/*
			�ּ�	addr1	400	��	���ϵ� ĥ� ����� ���߸�	�ּ�
			�ּһ�	addr2	400	��	183	�ּһ�
			���ô� �� ������	direction	4000	��		���ô� �� ������
			��ȭ	tel	300	��	054-972-8032	��ȭ
			Ȩ������	homepage	4000	��	http://cafe.daum.net/hantistar-camp	Ȩ������
			���� ������	resveUrl	4000	��	http://r6.camperstory.com/?1789	���� ������
			���� ����	resveCl	110	��	�¶��νǽð� ����	���� ����

			�۷��� - ���νü�	glampInnerFclty	200	��		�۷��� - ���νü�
			ī��� - ���νü�	caravInnerFclty	200	��		ī��� - ���νü�

			���㰡����	prmisnDe	10	��	2015-08-11	���㰡����

			��Ⱓ	operPdCl	50	��		��Ⱓ
			���	operDeCl	30	��		���

			���� Ʈ���Ϸ� ���� ����(Y:���, N:�̻��)	trlerAcmpnyAt	1	��	N	���� Ʈ���Ϸ� ���� ����(Y:���, N:�̻��)
			���� ī��� ���� ����(Y:���, N:�̻��)	caravAcmpnyAt	1	��	N	���� ī��� ���� ����(Y:���, N:�̻��)

			ȭ��� ����	toiletCo	11	��		ȭ��� ����
			������ ����	swrmCo	11	��		������ ����

			ȭ�δ�	brazierCl	4	��		ȭ�δ�

			�δ�ü�	sbrsCl	100	��		�δ�ü�
			�δ�ü� ��Ÿ	sbrsEtc	200	��		�δ�ü� ��Ÿ

			�ֺ��̿밡�ɽü�	posblFcltyCl	300	��		�ֺ��̿밡�ɽü�
			�ֺ��̿밡�ɽü� ��Ÿ	posblFcltyEtc	300	��		�ֺ��̿밡�ɽü� ��Ÿ

			��ü��ȭ��� ����(Y:���, N:�̻��)	clturEventAt	1	��	N	��ü��ȭ��� ����(Y:���, N:�̻��)
			��ü��ȭ����	clturEvent	200	��		��ü��ȭ����

			ü�����α׷� ����(Y:���, N:�̻��)	exprnProgrmAt	1	��	N	ü�����α׷� ����(Y:���, N:�̻��)
			ü�����α׷���	exprnProgrm	300	��		ü�����α׷���

			�׸�ȯ��	themaEnvrnCl	295	��		�׸�ȯ��
			ķ�����뿩	eqpmnLendCl	100	��		ķ�����뿩
			�ֿϵ�������	animalCmgCl	100	��		�ֿϵ�������
			����ñ�	tourEraCl	200	��		����ñ�
			��ǥ�̹���	firstImageUrl	300	��		��ǥ�̹���*/
			
            System.out.println(contentId);
            System.out.println(facltNm);
            System.out.println(lineIntro);
            System.out.println(intro);
            System.out.println(hvofBgnde);
            System.out.println(hvofEnddle);
            System.out.println(addr1);
            System.out.println(addr2);
            System.out.println(direction);
            System.out.println(tel);
            System.out.println(homepage);
            System.out.println(resveUrl);
            System.out.println(resveCl);
            System.out.println(glamplnnerFcly);
            System.out.println(caravlnnerFcly);
            System.out.println(prmisnDe);
            System.out.println(operPdCl);
            System.out.println(operDeCl);
            System.out.println(trlerAcmpnyAt);
            System.out.println(caravAcmpnyAt);
            System.out.println(toiletCo);
            System.out.println(swrmCo);
            System.out.println(brazierCl);
            System.out.println(sbrsCl);
            System.out.println(sbrsEtc);
            System.out.println(posblFcltyCl);
            System.out.println(posblFclyEtc);
            System.out.println(clturEventAt);
            System.out.println(clturEvent);
            System.out.println(exprnProgrmAt);
            System.out.println(exprnProgrm);
            System.out.println(themaEnvrnCl);
            System.out.println(eqpmnLendCl);
            System.out.println(tourEraCl);
            System.out.println(firstImageUrl);
			System.out.println("-------------------------------------------------");
			

			CampingVO vo = new CampingVO();
			vo.setContentId(item.getChildText("contentId"));
			vo.setFacltNm(item.getChildText("facltNm"));
			vo.setLineIntro(item.getChildText("lineIntro"));
			vo.setAddr1(item.getChildText("addr1"));
			vo.setFirstImageUrl(item.getChildText("firstImageUrl") != null ? 
					item.getChildText("firstImageUrl") : "https://via.placeholder.com/300");
			vo.setDoNm(item.getChildText("doNm"));
			vo.setSigunguNm(item.getChildText("sigunguNm"));
			vo.setLctCl(item.getChildText("lctCl"));
			vo.setFacltDivNm(item.getChildText("facltDivNm"));
			vo.setInduty(item.getChildText("induty"));
			vo.setThemaEnvrnCl(item.getChildText("themaEnvrnCl"));
			vo.setSbrsCl(item.getChildText("sbrsCl")); 
			vo.setMapX(item.getChildText("mapX"));
			vo.setMapY(item.getChildText("mapY"));

			ar[i++] = vo;
		}
		
		return ar;
	}
	
	@Override
	public CampingVO[] getDbSearchData(SearchVO vo) {
		return dataMapper.getSearchData(vo);
	}

	@Override
	public int initData(CampingVO vo){
		return dataMapper.initData(vo);
	}
	
	@Override
	public int getTotal() {
		return Integer.parseInt(body.getChildText("totalCount"));
	}
	
	@Override
	public int getDbSearchTotal(SearchVO vo) {
		return dataMapper.getSearchTotal(vo);
	}

	@Override
	public CampingVO getInfo(String contentId) {
		return dataMapper.getInfo(contentId);
	}
	
	
	/*	Review	*/
	@Override
	public List<CampingReviewDTO> getReviewAllInfoList(String contentId) {
		//Review All Data Select
		return dataMapper.getReviewAllInfoList(contentId);
	}
	
	@Override
	public void initReviewData(CampingReviewDTO c_dto) {
		//Review Data Insert
		dataMapper.initReviewData(c_dto);
	}

	@Override
	public CampingReviewDTO getReviewInfo(int reviewId) {
		//Review Data Select
		return dataMapper.getReviewInfo(reviewId);
	}

	@Override
	public void reviewClickNumUp(int reviewId) {
		//ReviewClickNum Data Updata
		dataMapper.reviewClickNumUp(reviewId);
	}
	
	@Override
	public void reviewUpdate(CampingReviewDTO c_dto) {
		dataMapper.reviewUpdate(c_dto);
	}
	
	@Override
	public int getReviewAllPageCnt() {
		return dataMapper.getReviewAllPageCnt();
	}
	
	@Override
	public List<CampingReviewDTO> getReviewSearchData(Map<String, Object> reviewMap) {
		return dataMapper.getReviewSearchData(reviewMap);
	}
	
	@Override
	public int getReviewCreateReviewID() {
		return dataMapper.getReviewCreateReviewID();
	}
	
	@Override
	public void deleteReviewData(int reviewId) {
		dataMapper.deleteReviewData(reviewId);
	}
	
	@Override
	public List<CampingReviewDTO> getSortReviewDatas(Map<String, Object> reviewMap) {
		return dataMapper.getSortReviewDatas(reviewMap);
	}
	
	/*	Review	*/

	
	public void addViews(String contentId) {
		dataMapper.addViews(contentId);
	}


}
