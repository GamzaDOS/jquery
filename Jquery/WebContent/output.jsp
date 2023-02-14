<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	비밀 : <input id="b" type="password"> <br>
	<input class="aa" type="submit" value="확인1">
	<button id="a">확인2</button>
	<div id="k"></div>	
<script>
$("#a").click(function () {
var s=$("#b").val();
console.log("값"+s);
$("#k").text(s);
});
</script>
<!-- <script> -->
<!--  $("#aa").click(function (e) { -->
<!--  	e.preventDefault(); // 이벤트 무시 -->
<!--  var s=$("#b").val(); -->
<!--  console.log("값"+s); -->
<!--  $("#k").text(s); -->
<!--  }); -->
<!-- </script>	 -->
</body>

</html>