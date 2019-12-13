<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function printClock() {
		var clock = document.getElementById("clock");	//출력할 장소 선택
		var currentDate = new Date();	//현재 시간
		var calendar = currentDate.getFullYear() + "-";
		calendar += (currentDate.getMonth()+1) + "-";
		calendar += currentDate.getDate();	//현재 날짜
		var amPm = 'AM';	//초기값 AM
		var currentHours = addZero(currentDate.getHours(),2);
		var currentMinute = addZero(currentDate.getMinutes(),2);
		var currentSeconds = addZero(currentDate.getSeconds(),2);
		
		if(currentHours >= 12){ //시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
			amPm  = 'PM';
			currentHours = addZero(currentHours - 12,2);
		}
		
		clock.innerHTML = currentHours + ":" + currentMinute + ":";
		clock.innerHTML += currentSeconds;
		clock.innerHTML += " <span sytle='font-size:50px;'>" + amPm + "</span>";
		setTimeout("printClock()", 1000);	//1초마다 printClock() 함수 호출
	}
	
	function addZero(num, digit){	//자리수 맞춰줌
		var zero = '';
		num = num.toString();
		if(num.length < digit) {
			for(i = 0; i< digit - num.length; i++){
				zero += '0';
			}
		}
		return zero + num;
	}
</script>
<style>
	#clock {
		border: 1px solid #dedede;
		width: 600px;
		height: 250px;
		line-height: 250px;
		color: #666;
		font-size: 100px;
		text-align: center;
	}	
</style>
<body onload="printClock()">
	<div id="clock"></div>
</body>
</html>