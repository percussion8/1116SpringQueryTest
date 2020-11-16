package com.korea.service;

import com.korea.domain.ProdDTO;

public interface ProdService {
	public void order(ProdDTO pdto);
	public ProdDTO findOrder(String id, String number);
	public int payback(String id, String number);
	
}
