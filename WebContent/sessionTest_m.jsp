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
		
		int i=0;
		while(enu.hasMoreElements()){
			i++;
			String sName= enu.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
		}
		if(i==0){out.print("�ش� ������ �����Ǿ����ϴ�.");}
%>



</body>
</html>