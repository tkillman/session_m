<%@page import="java.util.Enumeration"%>
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

		Enumeration enu = session.getAttributeNames();
		while(enu.hasMoreElements()){
			String sName=enu.nextElement().toString();
			String sValue= (String)session.getAttribute(sName);
			if(sValue.equals("abc")){session.removeAttribute(sName);}
		}

%>


<a href="sessionTest_m.jsp">sessionTest_m</a>
</body>
</html>