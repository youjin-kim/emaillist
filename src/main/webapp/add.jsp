<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.co.itcen.emaillist.dao.EmaillistDao"%>
<%@page import="kr.co.itcen.emaillist.vo.EmaillistVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String firstName = request.getParameter("fristName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");

	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록 되었습니다.</h1>
   <p>
   <a href="<%=request.getContextPath() %>">리스트 바로가기</a>
</body>
</html>