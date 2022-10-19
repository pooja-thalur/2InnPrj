<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Test help</title>
<link rel="stylesheet" href="main_style.css">
      <style type="text/css">
	      header{
	      	back
	      }
	    span{
			color: black;
		}
		li{
			padding-right: 5px;
		}
      </style>
</head>
<body>
 Test help
 <p>Click on next </p>
 <br>
 <br>
 param<br>
 <a href="/startTest">Next</a>
 <!-- <script type="text/javascript" src="..\..\scripts\courses.js"></script> -->
 <script>
 <!-- <script src="scripts/courses.js"> -->
 /* $(document).ready(function(){
	 $.ajax({
		 url:"/course/saveTestProgress",
		 type:"GET",
		 error: function(error){
			 console.log("error"+error);
		 }
	 })
 }) */
 function startTest() {  
	 const req = new XMLHttpRequest();
	 req.open("GET", "/saveTestProgress");
	 req.send(); 
	}  
 </script>
</body>
</html>