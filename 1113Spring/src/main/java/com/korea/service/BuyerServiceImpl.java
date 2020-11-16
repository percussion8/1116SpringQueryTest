package com.korea.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.korea.domain.BuyerDTO;
import com.korea.domain.ProdDTO;
import com.korea.mapper.BuyerMapper;
import com.korea.mapper.GreenMapper;
import com.korea.mapper.ProdMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class BuyerServiceImpl implements BuyerService, ProdService{
	@Setter(onMethod_=@Autowired)
	private BuyerMapper mapper;

	@Override
	public void signup(BuyerDTO bdto) {
		mapper.insert(bdto);
		
	}

	@Override
	public BuyerDTO login(String id, String pass) {
		return mapper.login(id, pass);
		
	}
	
	
	
	@Setter(onMethod_=@Autowired)
	private ProdMapper papper;

	@Override
	public void order(ProdDTO pdto) {
		papper.insertO(pdto);
		
	}

	@Override
	public ProdDTO findOrder(String id, String number) {
		return papper.find(id, number);
	}

	@Override
	public int payback(String id, String number) {
		return papper.payback(id, number);
	}
	
	

}
