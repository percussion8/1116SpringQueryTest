package com.korea.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.korea.domain.BuyerDTO;
import com.korea.domain.ProdDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		"file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BuyerMapperTest {
	@Setter(onMethod_=@Autowired)
	private BuyerMapper mapper;
	
	//@Test
	public void testInsert() {
		BuyerDTO bdto = new BuyerDTO();
		bdto.setBid("Monica88");
		bdto.setBname("박성연");
		bdto.setBpass("8888");
		bdto.setBadd("용인");
		bdto.setBadd2("수지구");
		bdto.setHomephone("031-305-9064");
		bdto.setMobile("010-4675-5042");
		mapper.insert(bdto);
	}
	
	//@Test
	public void testLogin() {
		log.info(mapper.login("Monica88", "8888"));
	}
	
	@Setter(onMethod_=@Autowired)
	private ProdMapper papper;
	
	//@Test
	public void testInsertO() {
		ProdDTO pdto = new ProdDTO();
		pdto.setOid("Monica88");
		pdto.setOname("박성연");
		pdto.setBadd("용인");
		pdto.setBadd2("수지구");
		pdto.setMobile("010-4675-5042");
		pdto.setOrderno("123456");
		pdto.setOprod("진저브래드쿠키");
		pdto.setOprice(15000);
		pdto.setOquant(1);
		pdto.setTotprice(15000);
		pdto.setCoupon(3000);
		pdto.setUsed('y');
		papper.insertO(pdto);
	}
	
	//@Test
	public void testFind() {
		int delt = papper.payback("Monica88", "123456");
		
		if (delt == 1) {
			log.info("삭제되었습니다");
		} else if (delt == 0) {
			log.info("삭제실패했습니다");
		}
	}

}
