<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<title>Insert title here</title>
</head>
<body>
 <textarea id="text1" placeholder="쓰자"></textarea><br>
<button id="cal">글자 수 계산</button>
<span id="count">(000/200)</span>

<script>
$("#cal").click(function (){
	console.log("클릭");
	var text1=$("#text1").val();
	console.log("입력값"+text1);
	
	$.ajax( {       
		url:"/quiz1API",          
		type:"GET",				
		dataType:"text",            
		data:{"text1":text1},              
		success:function(data){
			$("#count").text("("+data+"/200)");
		},               
		error:function(request,status,error){
			$("#count").text("통신오류"); 
		}
	});
	
});
</script>









</body>
</html>