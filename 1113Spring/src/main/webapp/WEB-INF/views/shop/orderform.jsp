<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈쇼핑 주문 폼</title>
</head>
<body>

<div>
	<a class="refund" href="/shop/refund?">운송장번호로 환불하기</a>
</div>

<form action="/shop/orderform" method="post">
	<input type="hidden" name="oid" value='<c:out value="${buyer.bid }"/>'><br>
	주문자 이름 <input type="text" name="oname" value='<c:out value="${buyer.bname }" />' readonly><br>
	주소 <input type="text" name="badd" value='<c:out value="${buyer.badd }" />'><br>
	상세주소 <input type="text" name="badd2" value='<c:out value="${buyer.badd2 }" />'><br>
	모바일 <input type="text" name="mobile" value='<c:out value="${buyer.mobile }" />'><br>
	송장번호 <input type="text" name="orderno" value='<c:out value="${orderno }" />' readonly><br>
	제품 선택 <select name="oprod" class="food">
		<!-- <optgroup label="제품선택"> -->
			<option value="붕어빵">붕어빵</option>
			<option value="케익">케익</option>
			<option value="진저브래드쿠키">진저브래드쿠키</option>
			<option value="호떡">호떡</option>
			<option value="타코야끼">타코야끼</option>
			<option value="코코아">코코아</option>
		<!-- </optgroup> -->
	</select>  <br>
	가격 <input type="text" id="oprice" name="oprice" value="" readonly><br>
	수량 <input type="text" id="quantity" name="oquant"><br>
	총 금액 <input type="text" id="total" name="totprice" readonly><br>
	쿠폰 <input type="text" id="coupon" name="coupon"  value="0"><br>
	쿠폰사용여부 <input type="text" id="used" name="used" value="N" readonly><br>
	<br>
	<input type="submit" value="결제"><br>
</form>

</body>

<script>
$(document).ready(function() {
	var menus = {
			"붕어빵" : "1000",
			"케익" : "7000",
			"진저브래드쿠키" : "5500",
			"호떡" : "1500",
			"타코야끼" : "3000",
			"코코아" : "4500"
	};
	$("select").mouseup(function() {
		var menu = $(this).val();
		$("#oprice").attr("value", menus[menu]);
		
	});
	
	$("#quantity").keyup(function() {
		var quant = parseInt($(this).val()) * parseInt($("#oprice").val());
		console.log(quant);
		$("#total").attr("value", quant);
		
	});
	
	$("#coupon").keyup(delay(function() {
		$("#used").attr("value", 'N');
		var last = 0;
		last = parseInt($("#total").val()) - parseInt($("#coupon").val());
		$("#total").attr("value", last);
		
		if(parseInt($("#coupon").val()) == 0 || parseInt($("#coupon").val()) == null){
			$("#used").attr("value", 'N');
			
		}
		
		$("#used").attr("value", 'Y');
		
	}, 300));
	
	
	function delay(fn, duration) {
		  var timer;
		  return function(){
		    clearTimeout(timer);
		    timer = setTimeout(fn, duration);
		  }
	}
	
	$(".refund").on("click", function() {
		$(this).attr("href", "/shop/refund?id=<c:out value='${buyer.bid }'/>" );
	})
	
});
</script>
</html>