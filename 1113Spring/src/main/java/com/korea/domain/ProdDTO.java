package com.korea.domain;

import lombok.Data;

@Data
public class ProdDTO {
	private String oid;
	private String oname;
	private String badd;
	private String badd2;
	private String mobile;
	private String orderno;
	private String oprod;
	private float oprice;
	private int oquant;
	private float totprice;
	private float coupon;
	private char used;
}
