<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	var timer, i=0, divide=100;
	var flag = true;
	
	function addZero(num, digit){
		var zero = '';
		num = num.toString();
		if(num.length < digit){
			zero += '0';
		}
		return zero + num;
	}
	
	function start() {
		if(flag){
			timer = self.setInterval('increment()', (1000/divide));
			flag = false;
		}
	}
	function increment() {
		i++;
		var min = addZero(parseInt(i/6000),2);
		var sec = ((i%6000)/divide).toFixed(2);
		var secArr = sec.toString().split(".");
		secArr[0] = addZero(secArr[0],2);
		
		sec = secArr[0] + "." + secArr[1];
		
		document.getElementById('time_out').innerHTML = min + ":" + sec;
	}
	function stop() {
		if(!flag){
			clearInterval(timer);
			timer = null;
			flag = true;
		}
	}
	function reset() {
		stop();
		i = 0;
		document.getElementById('time_out').innerHTML = "00:00.00";
	}
</script>
<style>
	#time_out {
		border: 1px solid #dedede;
		width: 600px;
		height: 250px;
		line-height: 250px;
		color: #666;
		font-size: 100px;
		text-align: center;
	}
</style>
<body>
<span id="time_out">00:00.00</span><br><br>
<button id="start_timer" onclick="start()">시작</button>
<button id="stop_timer" onclick="stop()">정지</button>
<button id="reset_timer" onclick="reset()">Reset</button><br>
<input type="button" onclick="start()" value="시작">
<input type="button" onclick="stop()" value="정지">
<input type="button" onclick="reset()" value="Reset">
</body>
</html>