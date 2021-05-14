<%@ page import="model.Payment"%>
<%@ page import="com.PaymentService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Views/bootstrap.min.css">
    <script type="text/javascript" src="Components/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="Components/Payment.js"></script>
</head>


<body>
<div class="container"><div class="row"><div class="col-6">

<form id="formResearch" name="formResearch" method="post" action="Payment.jsp">
 PaymentId:
<input id="PaymentId" name="PaymentId" type="text"
 class="form-control form-control-sm">
<br> Name:
<input id="Name" name="Name" type="text"
 class="form-control form-control-sm">
<br> CardType:
<input id="CardType" name="CardType" type="text"
 class="form-control form-control-sm">
<br> CardNo:
<input id="CardNo" name="CardNo" type="text"
 class="form-control form-control-sm">
<br>
<br> cvv:
<input id="cvv" name="cvv" type="text"
 class="form-control form-control-sm">
<br><br> EXP_Month:
<input id="EXP_Month" name="EXP_Month" type="text"
 class="form-control form-control-sm">
<br><br> EXP_Year:
<input id="EXP_Year" name="EXP_Year" type="text"
 class="form-control form-control-sm">
<br><br> Amount:
<input id="Amount" name="Amount" type="text"
 class="form-control form-control-sm">
<br><br> PaymentDate:
<input id="PaymentDate" name="PaymentDate" type="text"
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
<div id="divPaymentGrid">
 <%
 Payment resObj = new Payment();
 out.print(resObj.readPayment());
 %>
</div>			
</div>

</body>
</html>