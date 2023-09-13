<%-- 
    Document   : changeMobileNumberAction
    Created on : Nov 23, 2021, 10:17:33 PM
    Author     : asu
--%>

<%-- 
    Document   : changePasswordAction
    Created on : Nov 23, 2021, 7:58:08 PM
    Author     : asu
--%>

<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
  String email=session.getAttribute("email").toString();
  String mobileNumber=request.getParameter("mobileNumber");
  String password =request.getParameter("password");
 
  

  int check=0;
    try
    {
      Connection con=ConnectionProvider.getCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
        while(rs.next())
        {
            check=1;
            st.executeUpdate("update users set mobileNumber='"+mobileNumber+"' where email='"+email+"'");
            response.sendRedirect("changeMobileNumber.jsp?msg=done");
        
        }
        if(check==0)
        {
             response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
        }
        
    }catch(Exception ex)
    {
        System.out.println(ex);
    }

%>