<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ include file="changeDetailsHeader.jsp" %>
<%@ include file="footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile No.</title>
</head>
<body>
 <% 
     String msg=request.getParameter("msg");
    if("done".equals(msg))
    {
    %>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<% }
%>
 <% 
    if("wrong".equals(msg))
    {
    %>
<h3 class="alert">Your Password is wrong!</h3>
<% }
%>

<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" required placeholder="Enter here New Mobile Number">
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" required placeholder="Enter password(For Security)">
<hr>
<button type="submit" class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>