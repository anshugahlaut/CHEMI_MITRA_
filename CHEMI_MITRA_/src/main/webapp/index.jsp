<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js"
    crossorigin="anonymous"> </script>
    <link rel="stylesheet" href="style.css" />
    <title>Sign in & Sign up Form</title>
  </head>
  
  <body>
    
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
             
            <form action="loginAction.jsp" method="post" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="email" name="email" placeholder="Enter Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password" />
            </div>
            
            <input type="submit" value="Login" class="btn solid" />
            <a href="forgotPassword.jsp"  value="Forgot Password " class="btn solid" style="padding: 15px"><center><div style="font-family: cursive">Forgot</div></center></a>
          
            <div class="social-media">
              <a href="https://www.facebook.com/" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="https://twitter.com/i/flow/login" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://www.google.com/" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="https://www.linkedin.com" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
           

          <form action="signupAction.jsp" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="name" placeholder="Username" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-phone"></i>
              <input type="number" name="mobilenumber" placeholder="Enter Mobile No" />
            </div>
            
            <div class="input-field">
                  <i class="fas fa-lock"></i>
                <select name="SecurityQuestion" required>
              <option value="What was your first car?">What was your first car?</option>
              <option value="what is the name of your first pet?">what is the name of your first pet?</option>
              <option value="what elementary schiil did yu attend?">what elementary School did you attend?</option>
              <option value="what is the name of the town where you were born?">what is the name of the town where you were born?</option>
          </select>
            
            </div>
            <div class="input-field">
              <i class="fas fa-pen-fancy"></i>
              <input type="text" name="answer" placeholder="Enter Answer" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password" />
            </div>
            <input type="submit" class="btn" value="Sign up" />
            <p class="social-text">Or Sign up with social platforms</p>
            <div class="social-media">
              <a href="https://www.facebook.com" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="https://www.twitter.com" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://www.google.com" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="https://www.link3din.com" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
              <%
          String msg=request.getParameter("msg");
         
          if("valid".equals(msg))
          {
          %>
          
            <h1>Successfully Updated</h1>           
    
            <%} %>
      <%
      if("notexist".equals(msg))
      {
      %>
      
        <h1>Somthing went wrong!Try Again</h1>           

        <%}%> 
          <div class="content">
            <h3>Register New here..?</h3>
            <p>
            <center><h3 style="font-family: cursive">Welcome!!!</h3></center>
            </p>
            <p><h4>If you are not among one of us, please register yourself</h4></p>
        <p><h4>We welcome you to our family!!!</h4></p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
           
          <div class="content">
              
               <%
          String msg1=request.getParameter("msg");
         
          if("valid".equals(msg1))
          {
          %>
          
            <h1>Successfully Updated</h1>           
    
            <%} %>
      <%
      if("notexist".equals(msg1))
      {
      %>
      
        <h1>Somthing went wrong!Try Again</h1>           

        <%}%> 
            <h3>One of us ?</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
              laboriosam ad deleniti.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>