<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="css/main_top.css">
<link rel="stylesheet" type="text/css" href="css/sidebar.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- ファビコンの表示 -->

<link rel="shortcut icon" href="img/top/fav.ico" />

<!-- 国際化 -->

<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.main_top" var="lang" />



<title><s:text name="lang.main_top_title"/></title>
<s:include value="header.jsp" />
<s:include value="sidebar.jsp" />
</head>
<body>




	<DIV align="center">
		<img src="img/top/line2.png"> <br><br>



		ようこそ、夢の町へ！