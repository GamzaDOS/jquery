<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="form1" action="a" method="get">
	id:<input type="text" name="id"><br>
	pw:<input type="password" name="pw"><br>
	<input type="submit" value="a로">
	<input id="b" type="submit" value="b로">
	<input id="c" type="submit" value="c로">
</form>

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
$("#b").click(function (e){
	e.preventDefault; //아이디 b에 걸려있는 이벤트 무효화
	$("#form1").attr("action","b")
	$("#form1").submit();

});
	// 아래와 같이 코드를 줄일 수 잇음.
$("#c").click(function(e){
	e.preventDefault;
	form.attr("action","c").submit();
		
}   );
</script>
</body>
</html>