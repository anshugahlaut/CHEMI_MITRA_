<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    try{
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        String q1="INSERT INTO USER(name,email.password) VALUES('Admin','admin@admin','admin')";
 st.execute(q1);

System.out.println("Admin created");
         con.close();
    }
    catch(Exception e){
        System.out.println(e);
    }
    %>