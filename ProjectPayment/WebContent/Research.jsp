<%@ page import="model.Research"%>
<%@ page import="com.ResearchService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Views/bootstrap.min.css">
    <script type="text/javascript" src="Components/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="Components/research.js"></script>
</head>


<body>

<div class="container"><div class="row"><div class="col-6">

<form id="formResearch" name="formResearch" method="post" action="Research.jsp">
 
 ProjectID:
<input id="ProjectID" name="ProjectID" type="text"
 class="form-control form-control-sm">
 
 ProjectCode:
<input id="ProjectCode" name="ProjectCode" type="text"
 class="form-control form-control-sm">

<br> ProjectName:
<input id="ProjectName" name="ProjectName" type="text"
 class="form-control form-control-sm">

<br> Price:
<input id="Price" name="Price" type="text"
 class="form-control form-control-sm">

<br> ProjectType:
<input id="ProjectType" name="ProjectType" type="text"
 class="form-control form-control-sm">
<br>
<input id="btnSave" name="btnSave" type="button" value="Save"
 class="btn btn-primary">
<input type="hidden" id="hidProjectIDSave" name="hidProjectIDSave" value="">
</form>

<!--  Alert messages for the events-->
			<div id="alertSuccess" class="alert alert-success"></div> 
			<div id="alertError" class="alert alert-danger"></div>
			

<br>
<div id="divProjectGrid">
 <%
 Research resObj = new Research();
 out.print(resObj.readResearch());
 %>
</div></div>
 
</body>
</html>