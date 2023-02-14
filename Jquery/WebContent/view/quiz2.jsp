<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<textarea id="str"></textarea> <br>
<button>글자수 개산</button> <span id="output"></span>

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
$("button").click(function (){ 
	var str=$("#str").val(); //text area에 입력된 글자.
	console.log("입력된 글자",str);
	
	$.ajax( {       
		url:"/strlength",               //요청할 주소
		type:"POST",					//요청 메소드
		cache:"false",              //캐쉬사용유무
		dataType:"text",              //받아온 데이터 타입
		data:{
			"str":str      //보낼데이터
		}          ,             
		success:function(data){             //성공했을때 실행할 함수 data는 받아온값
			$("#output").text("총글자수는:"+data);          //하고싶은 내용
		} ,               
		error:function(request,status,error){ //에러일때
			console.log("ajax 처리오류");
		
		}
	});
	
});


</script>
</body>
</html>