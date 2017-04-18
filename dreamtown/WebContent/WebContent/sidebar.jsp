<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.sidebar"
	var="lang" />
<link rel="stylesheet" type="text/css" href="./css/sidebar.css">
<!-- BootstrapのCSS読み込み -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery読み込み -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- BootstrapのJS読み込み -->
<script src="js/bootstrap.min.js"></script>
<script>
	function displayCategory(){
		var category = document.getElementById( "categoryMenu" );
		if(category.style.display == 'none'){
			category.style.display = 'block';
		}else{
			category.style.display = 'none';
		}
	}
	function displayFeature(){
		var feature = document.getElementById( "featureMenu" );
		if(feature.style.display == 'none'){
			feature.style.display = 'block';
		}else{
			feature.style.display = 'none';
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
<div class="side">
			<button class="terms_of_selection1" disabled></button><br>
			<button class="terms_of_selection2" onclick="displayCategory();"></button><br>
			<div id="categoryMenu" style="display: none;">
				<a href='<s:url action="GoCategoryAction"><s:param name="category" value="'フィギュア・人形'"/></s:url>'><button class="menu1"></button></a><br>
				<a href='<s:url action="GoCategoryAction"><s:param name="category" value="'ブロック'"/></s:url>'><button class="menu2"></button></a><br>
				<a href='<s:url action="GoCategoryAction"><s:param name="category" value="'ままごと'"/></s:url>'><button class="menu3"></button></a><br>
				<a href='<s:url action="GoCategoryAction"><s:param name="category" value="'プログラミング'"/></s:url>'><button class="menu4"></button></a><br>
			</div>
			<button class="terms_of_selection3" onclick="displayFeature();"></button><br>
			<div id="featureMenu" style="display: none;">
				<a href='<s:url action="GoItemFeatureAction"><s:param name="itemFeature" value="1"/></s:url>'><button class="menu5"></button></a><br>
				<a href='<s:url action="GoItemFeatureAction"><s:param name="itemFeature" value="2"/></s:url>'><button class="menu6"></button></a><br>
				<a href='<s:url action="GoItemFeatureAction"><s:param name="itemFeature" value="3"/></s:url>'><button class="menu7"></button></a><br>
			</div>
		<form action="ItemSearchAction" method="post">
			<input type="text" name="searchName" maxlength="30" size="17" placeholder="<s:text name="%{getText('lang.sidebar.item_name_search')}" />">
			<div align="center"><input type="submit" value="<s:text name="%{getText('lang.sidebar.search')}" />"></div>
		</form>
	</div>
</body>
</html>