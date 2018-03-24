<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Shape UR Collage - Main</title>
		<link rel="stylesheet" type="text/css" href="Main.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Julius+Sans+One" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Nixie+One|Syncopate" rel="stylesheet">
		
		<script>
			function IsEmpty() {
				 if(document.getElementById("topic").value == "" || document.getElementById("lettershape").value == "")
	            {
					 document.getElementById("go").disabled = true;
	            }else{
	           	 	document.getElementById("go").disabled = false;
	            }
	
			}
			
			function formSubmit(){
				/*
				var xhttp=new XMLHttpRequest();
				var url="servlet?topic="+document.getElementById("topic").value+"&lettershape="+document.getElementById("lettershape").value;
				xhttp.open("POST"，url, false);*/
				
			}
		
		</script>
	</head>
	<body>
		<div id="user">
			<span>Hello, Team F</span>
		</div>
		<div style="clear:both;"></div>
		<div id="title">
			Shape Your Collage
		</div>
		<div id="main">
			<form id="collageinfo" method="post" action="servlet">
				<div id="inputs">
				   	<input type="text" id="topic" class="form-control" oninput="IsEmpty()" placeholder="Topic"><br/><br/>
					<input type="text" id="lettershape" class="form-control" oninput="IsEmpty()" placeholder="Letter Shape"><br/><br/>
			   </div>
				<input type="submit" id="go" class="btn btn-default" value="Build Collage" onsubmit="formSubmit()" disabled>
			
			</form>
		
		</div>
	
	</body>
</html>