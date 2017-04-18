<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<fmt:setLocale value="${pageContext.request.locale.language}" />
	<fmt:setBundle basename="com.internousdev.umari.property.settle_complete" var="lang"/>
	<title><s:text name="lang.settleComplete.settlementcompleted"/></title>
	<s:include value="header.jsp" />
</head>
<body>
<s:include value="sidebar.jsp" />
<div style="width: 200px; height: 100%; float: left;"></div>
<div style="margin-right: 200px;">
	<h3 align="center"><s:text name="lang.settleComplete.appreciation1"/></h3>
	<h3 align="center"><s:text name="lang.settleComplete.appreciation2"/></h3>
	<h3 align="center">
		<a href="main_top.jsp"><s:text name="lang.settleComplete.gobacktotop"/></a>
	</h3>
</div>
	<div style="height:400px;">
	</div>
	<c:import url="http://localhost:8080/openconnect/footer.jsp" />
</body>

</html>