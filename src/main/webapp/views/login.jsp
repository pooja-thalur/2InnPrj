<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Courses</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Lato%3A300%2C300italic%2C400%2C400italic%2C700%2C700italic&amp;display=swap" rel="stylesheet" nonce="">
<link rel="stylesheet" href="main_style.css">
      <style type="text/css">
	    span{
			color: black;
		}
		li{
			padding-right: 5px;
		}
		
		
      </style>
</head>
<body>
	<header>
		<jsp:include page="_navbar.jsp"></jsp:include>
	</header>
<!-- <div class="login-container"> -->
	<div class="img-responsive login-container" style="background-image: url('https://i.ibb.co/4ZVkrrN/bg-image-2.png'); background-size: cover; " >
  <!-- <div style="background-image: linear-gradient(rgba(0, 0, 255, 0.5), rgba(0, 255, 55, 0.742) , url('https://i.ibb.co/2c9p3JH/backgroud-Img.png'));"> -->
      <form action="/authorizeLogin" method="POST">
        <div class="container loginform">
			<h1 class="commonTitle">Login to your account</h1>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<!-- success msg -->
					<% String success=request.getParameter("success");%>
					<%if(success == "true"){
						out.print("Hiii");
					}
					%>
					<div class = "form-group">
						<label for ="username"> Username </label> :
						<input type="text" class = "form-control" id ="username" name = "username"
						placeholder="Enter Email ID" autofocus="autofocus">
					</div>
					<div class="form-group">
						<label for="password">Password</label>: <input type="password"
							id="password" name="password" class="form-control"
							placeholder="Enter Password" />
					</div>
					
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<input type="submit" name="login-submit" id="login-submit"
								class="btn " value="Log In" />
						</div>
					</div>
				</div>

			</div>
		</div>
      </form>
	  <div class="form-group">
		<span class="userTxt">New user? <a class="registerTxt" href="/" th:href="@{/registration}">Register
				here</a></span>
		</div>
  <!-- </div> -->
</div>
</body>
</html>