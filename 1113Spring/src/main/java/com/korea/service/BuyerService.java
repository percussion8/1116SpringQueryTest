package com.korea.service;

import com.korea.domain.BuyerDTO;

public interface BuyerService {
	public void signup(BuyerDTO bdto);
	public BuyerDTO login(String id, String pass);
	

}
