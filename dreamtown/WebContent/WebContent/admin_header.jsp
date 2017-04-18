<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!--国際化-->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.adminHeader" var="lang"/>
<link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/admin_header.css">
<meta charset="UTF-8">
<title>header</title>
</head>
<body>





<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-header">
		<a class="navbar-brand" href="<s:url action="OccupationIndicateAction"></s:url>"><s:text name="lang.admin_header.top"></s:text></a>
	</div>

	<ul class="nav navbar-nav">
		<li><a href="item_add.jsp"><s:text name="lang.admin_header.item_add"></s:text></a></li>
		<li><a href="<s:url action="ItemListAction"></s:url>"><s:text name="lang.admin_header.item_list"></s:text></a>
		<li><a href="<s:url action="AdminInquiryAction"></s:url>"><s:text name="lang.admin_header.contact"></s:text></a></li>
		<li><a href="<s:url action="HistoryInfoAction"></s:url>"><s:text name="lang.admin_header.historyinfo"></s:text></a>
		<li><a href="<s:url action="LogoutAction"></s:url>"><s:text name="lang.admin_header.logout"></s:text></a>
	</ul>


</nav>



</body>
</html>