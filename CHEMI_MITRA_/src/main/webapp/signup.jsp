<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">

        
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    
    
     <form action="signupAction.jsp" method="post">
          <input type="text" name="name" placeholder="Enter Name" required>
          <input type="email" name="email" placeholder="Enter Email" required>
          <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
          <select name="SecurityQuestion" required>
              <option value="What was your first car?">What was your first car?</option>
              <option value="what is the name of your first pet?">what is the name of your first pet?</option>
              <option value="what elementary schiil did yu attend?">what elementary School did you attend?</option>
              <option value="what is the name of the town where you were born?">what is the name of the town where you were born?</option>
          </select>
             <input type="text" name="answer" placeholder="Enter answer" required>
             <input type="password" name="password" placeholder="Enter Password" required>
             <input type="submit"  value="Signup">
          
      </form>
    
    
  
      <h2><a href="login.jsp" class="btn btn-outline-light my-2 my-sm-0">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
          String msg=request.getParameter("msg");
          if("valid".equals(msg))
          {
          %>
          
            <h1>Successfully Updated</h1>           
    
            <%} %>
      <%
      if("invalid".equals(msg))
      {
      %>
      
        <h1>Somthing went wrong!Try Again</h1>           

        <%}%>


        <h2><center><b>Online Medical Store</b></center></h2>
    <p>The Online Medical Store is the application that allows the users to purchase online medicine without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>