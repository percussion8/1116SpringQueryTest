<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>환불 확인</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<p><c:out value="${hist.oid }" />님의 <c:out value="${hist.orderno }" /> 주문 확인</p><br>
	<button class="payback">환불하기</button> <br>
	<br>
	<ul>
		<li>주문인 | 주소1 | 주소2 | 전화번호 | 품목 | 단품가격 | 수량 | 총액 | 쿠폰 | 쿠폰적용</li>
	</ul>
	<br>
	<ul>
		<li><c:out value="${hist.oname }" /> | 
		<c:out value="${hist.badd }" /> | 
		<c:out value="${hist.badd2 }" /> | 
		<c:out value="${hist.mobile }" /> | 
		<c:out value="${hist.oprod }" /> | 
		<c:out value="${hist.oprice }" /> | 
		<c:out value="${hist.oquant }" /> | 
		<c:out value="${hist.totprice }" /> | 
		<c:out value="${hist.coupon }" /> | 
		<c:out value="${hist.used }" /></li>
	</ul>

	
</body>
<script>
	$(document).ready(function() {
		$(".payback").on("click", function() {
			var page = null;
			page = "/shop/refunded?id=" + "<c:out value='${hist.oid }'/>&orderno=" + "<c:out value="${hist.orderno }" />";
			self.location= page;
		})
	})
</script>
</html>