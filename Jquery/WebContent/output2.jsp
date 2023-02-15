<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	비밀:<input id="input" type="password"  name="pw"><br>
	<input class="a" type="submit" value="확인">
	<button class="a">확인</button>
</form>
${empty param.pw ? "" : "당신의 비밀은" += param.pw } <!--  문자끼리 더할떈 +가 안먹혀서 += -->
<h3>수정</h3>
</body>
</html>