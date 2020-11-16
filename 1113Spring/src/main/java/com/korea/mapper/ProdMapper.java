package com.korea.mapper;

import com.korea.domain.ProdDTO;

public interface ProdMapper {
	public void insertO(ProdDTO pdto); //주문
	public ProdDTO find(String id, String order); //송장번호로 하나 가져옴
	
	public int payback(String id, String order); //반품
}
