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
		<nav class="navbar">
			<ul>
				<span class="headerEle">
					<li>
						Home
					</li>
					<li>
						Courses
					</li>
					<li>
						Test
					</li>
					<li>
						Contact Us
					</li>
				</span>
			</ul>
		</nav>
	</header>
<div class="flex-container">
  <div>
    <div class="login-container center">
      <form action="/saveMemberDetails">
        <h1 class="signup">
          SignUp
        </h1>
        <br>
        <br>
		<br>
		<div class="input-control">
        <span>Name:
        	<input type="text" name="name" value="">
		</span>
		</div>
        <span>Place:
			<input type="text" name="place" value="">
		</span>
		<br>
        <span>Contact No.:
        	<input type="text" name="phoneNumber" value="">
		</span>
		<br>
        <span >Email Id:
        	<input type="text" name="username" value="">
        <br>
        <span>Qualification:
        	<input type="text" name="qualification" value="">
		</span>
		<br>
        <span>College:
        	<input type="text" name="college" value="">
		</span>
		<br>
        <span>Pursuing Course:
        	<input type="text" name="course" value="">
		</span>
		<br>
		<span>Career Interest:
        	<input type="text" name="careerInterest" value="">
		</span>
		<br>
		<span>Password:
        	<input type="text" name="password" value="">
		</span>
        <br><br>
        <input type="submit" value="SUBMIT" class="submit-btn">
      </form>
    </div>
  </div>
</div>
</body>
</html>