<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question ${currentQuesId+1}</title>
<script src="/javascript/courses.js"></script>
<link rel="stylesheet" href="main_style.css">
</head>
<body>
<h1>Aptitude test</h1>
<div id="question">dfghjk
Options::     		
<input type="hidden" id="currentQuesId" value="${currentQuesId}"></input>
<input type="hidden" id="currentQuesNo" value="${questNo}"></input>
<input type="hidden" id="selectedOptionId" value=""></input>
<label id="question">Question 1</label>
<input type="hidden" name="options" value="${options}"></input>



</div>
<input type="submit" value="Save" class="submit-btn" onclick="saveProgress()">Save</input>
<!-- <script type="text/javascript" src="questionAns.js"></script> -->
<script type="text/javascript">
function saveProgress() {
	  
    // Creating Our XMLHttpRequest object 
    var xhr = new XMLHttpRequest();
	var currentQuesId = document.getElementById("currentQuesId").value;
	var quesNo = document.getElementById("currentQuesNo").value;
    // Making our connection  
    var url = '/saveTestProgress?currentQuesId='+currentQuesId+'&currentQuesNo='+quesNo;
    xhr.open("GET", url, true);

    // function execute after request is successful 
    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
        }
    }
    // Sending our request 
    xhr.send();
}
</script>
</body>
</html>