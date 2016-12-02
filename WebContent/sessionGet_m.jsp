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
			String sName = enu.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
			
			out.print(sName);
			out.print(sValue);
			out.print("------------");
			
		}
		String sId = session.getId();
		out.print(sId);
		
		
		session.removeAttribute("name1");
		Enumeration enu1 = session.getAttributeNames();
		
		while(enu1.hasMoreElements()){
			String sName = enu1.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
			
			out.print(sName);
			out.print(sValue);
			out.print("------------");
			
		}
		
		session.invalidate();
		if(request.isRequestedSessionIdValid()){
			
			out.print("해당 세션이 있다.");
		} else {out.print("해당 세션이 없다.");}
		
%>

</body>
</html>