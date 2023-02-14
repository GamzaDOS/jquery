<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<span id="time">안녕하세요</span><br>
<span id="now">현재시간</span><br>
<hr>
<input type="number" id="num1"> + <input type="number" id="num2">  = <input type="number" id="sum"> <br>
<button id="cal">계산</button>

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
$("#now").click( function (){
	console.log("현재시간 클릭")
	//ajax처리
	//현재시간을 서버에 요청	
	//값을 받아와서	
	//받은 내용을 화면에 처리
	$.ajax({
		url:"/api1",        //요청할 주소
		type:"GET",	        //요청 메소드	
		cashe:"false",      //캐쉬사용유무
		dataType:"text",    //받아온 데어터 타입
		//data:"",			//보낼 테이터
		success:function(data){ 		//성공했을 때 실행한 함수, data는 받아온 값
			$("#time").text(data);     //하고 싶은 내용
		},	
		error: function (request, status, error){ $("#time").text("통신오류");   //에러일때 
		}
	});
});
</script>
<script>
$("#cal").click(function (){ 
	console.log("계산요청 클릭");
	var num1=$("#num1").val();
	var num2=$("#num2").val();
	
	
	$.ajax( {       
		url:"/api2",               //요청할 주소
		type:"GET",					//요청 메소드
		cache:"false",              //캐쉬사용유무
		dataType:"text",              //받아온 데이터 타입
		data:{
			"num1":num1, // ""는 이름 :num은 값
			"num2":num2
		}          ,               //보낼데이터
		success:function(data){             //성공했을때 실행할 함수 data는 받아온값
			$("#sum").val(data);          //하고싶은 내용
		} ,               
		error:function(request,status,error){ //에러일때
			$("#time").text("통신오류"); 
		}
	});
	
});
</script>
</body>
</html>