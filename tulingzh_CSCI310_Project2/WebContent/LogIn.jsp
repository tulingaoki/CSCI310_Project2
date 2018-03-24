<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Shape UR Collage - Start</title>
		<link rel="stylesheet" type="text/css" href="LogIn.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Julius+Sans+One" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Nixie+One|Syncopate" rel="stylesheet">
		<script>
			
			var indicator="login";
			
			function IsEmpty() {
				 if(document.getElementById("username").value == "" || document.getElementById("password").value == "")
	            {
					 document.getElementById("go").disabled = true;
	            }else{
	           	 	document.getElementById("go").disabled = false;
	            }
	
			}
		
			function toLogIn(){
				indicator="login";
				console.log("there");
				document.getElementById("login").style.color="grey";
				document.getElementById("login").style.textDecoration="none";
				document.getElementById("signup").style.color="white";
			}
			
			function toSignUp(){
				indicator="signup";
				console.log("here");
				document.getElementById("login").style.color="white";
				document.getElementById("signup").style.color="grey";	
				document.getElementById("signup").style.textDecoration="none";
			}
			
			function formSubmit(){
				/*
				var xhttp=new XMLHttpRequest();
				var url="servlet?type="+indicator+"&username="+document.getElementById("username").value+"&password="+document.getElementById("password").value;
				xhttp.open("POST"，url, false);*/
				
			}
		
		
		</script>
	</head>
	<body>
		<div id="title">
			Start From Here
		</div>
		<div id="loginsignup" class="text-center">
			<div id="links">
				<a href="#" id="login" onclick="toLogIn()">LOGIN</a>
				<a href="#" id="signup" onclick="toSignUp()">SIGNUP</a>
			</div>
			
			<form id="loginform" method="post" action="servlet">
			   <div id="inputs">
			   	<input type="text" id="username" class="form-control" oninput="IsEmpty()" placeholder="Username"><br/><br/>
				<input type="password" id="password" class="form-control" oninput="IsEmpty()" placeholder="Password"><br/><br/>
			   </div>
				<input type="submit" id="go" class="btn btn-default" value="GO" onsubmit="formSubmit()" disabled>
			
			</form>

		
		</div>
		

	</body>
</html>