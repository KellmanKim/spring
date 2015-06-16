<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Kaikki henkilöt</title>
<link rel="stylesheet" type="text/css" href="../resources/styles/common.css">
</head>	
<body>
	<h1>
		Kaikki henkilöt
	</h1>
	
	<table>
	<tr><th width="150px" style="text-align: left">Etunimi</th><th width="150px" style="text-align: left">Sukunimi</th></tr>
	<c:forEach items="${henkilot}" var="henkilo">
		<tr>
		<td><c:out value="${henkilo.etunimi}"></c:out></td>
		<td><c:out value="${henkilo.sukunimi}"></c:out></td>
		</tr>
	</c:forEach>
	</table>
	
	<br />
	<a href="<%=request.getContextPath()%>">Palaa</a>
</body>
</html>