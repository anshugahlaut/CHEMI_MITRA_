<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ include file="adminHeader.jsp" %>
<%@ include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Medicine</title>
</head>
<body>


<%String msg=request.getParameter("msg");
        if("done".equals(msg)){
            %>
            <h3 class="alert">Medicine Added Successfully!</h3>
        <%}%>
        <%
        if("wrong".equals(msg)){
            %>
            <h3 class="alert">Some thing went wrong! Try Again!</h3>
        <%}%>
        
        <%
            int id = 1;
            try {
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select max(id) from product");
                while (rs.next()) {
                    id = rs.getInt(1);
                    id = id + 1;
                }
            } catch (Exception e) {
                
                System.out.println(e);
            }
        %>
       <form action="addNewProductAction.jsp" method="post"> 
        <h3 style="color: yellow;">Medicine ID: <%out.println(id); %></h3>
        <input type="hidden" name="id" value="<%out.println(id);%>">
        
</div>
<div class="left-div">
            <h3>Enter Medicine Name</h3>
            <input class="input-style"  type="text" name="name" placeholder="Enter Name" required>
            <hr>
        </div>

        <div class="right-div">
            <h3>Disease Category</h3>
            <input class="input-style" type="text" name="category" placeholder="Enter category" required>
            <hr>
        </div>
            
        

        <div class="left-div">
            <h3>Enter Price</h3>
        <input class="input-style" type="number" name="price" placeholder="Enter price" required>
            <hr>
        </div>

        <div class="right-div">
            <h3>Active</h3>
            <select class="input-style" name="active">
                <option value="No">Yes</option>
                  <option value="No">NO</option>
            </select>
           
            <hr>
        </div>
            <button class="button">save<i class='far fa-arrow-alt-circle-right'></i></button>
        </form>
</body>
<br><br><br>
</body>
</html>