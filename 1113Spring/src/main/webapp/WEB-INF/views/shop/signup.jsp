<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="/shop/signup" method="post">
	아이디: <input type="text" name="bid"><br>
	이름: <input type="text" name="bname"><br>
	비밀번호: <input type="text" name="bpass"><br>
	주소: <select name="badd" class="home">
			<option value="서울">서울</option>
			<option value="용인">용인</option>
			<option value="성남">성남</option>
			<option value="진주">진주</option>
			<option value="남양주">남양주</option>
			<option value="여수">여수</option>
	</select><br>
	상세주소: <input type="text" name="badd2"><br>
	집번호: <input type="text" name="homephone"><br>
	개인번호: <input type="text" name="mobile"><br>
	<input type="submit" value="가입"><br>
</form>

</body>
</html>