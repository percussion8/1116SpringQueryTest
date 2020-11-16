package com.korea.mapper;

import com.korea.domain.BuyerDTO;

public interface BuyerMapper {
	public void insert(BuyerDTO bdto);
	public BuyerDTO login(String id, String pass);
}
