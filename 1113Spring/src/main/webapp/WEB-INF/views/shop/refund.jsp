<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문취소</title>
</head>
<body>
	<form action="/shop/refunds" method="get">
		<input type="hidden" name="id" value="<c:out value='${id }'/>">
		운송장 번호 : <input type="text" name="orderno">
		<input type="submit" value="검색">
	</form>

	
</body>
</html>