<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
 
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");


if(id.equals("abc") && pw.equals("123")){
	out.print(session.getId());
	session.setAttribute("id", id);
	response.sendRedirect("welcome_m.jsp");
	
}else{response.sendRedirect("login_m.html");}

%>



</body>
</html>