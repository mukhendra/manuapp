<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.es.dto.*" %>
<%@page import="com.dts.em.dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newAmbulanceAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
 <%  AmbulanceDTO adto = new AmbulanceDTO();
  adto.setAno(request.getParameter("ano"));
  adto.setAtype(request.getParameter("atype"));
  adto.setAlocation(request.getParameter("alocation"));
  adto.setAequipement(request.getParameter("aequipement"));
    boolean flag = new AmbulanceDAO().registerAmbulance(adto);
        String target = "adminhome.jsp?status=Ambulance Registration Failed";
         if(flag)
            target = "adminhome.jsp?status=Ambulance Registration Success";
         else  
            target = "adminhome.jsp?status=Ambulance Registration Failed"; 
        RequestDispatcher rd = request.getRequestDispatcher(target);
        rd.forward(request,response); 
  %>
  
  
  </body>
</html>
