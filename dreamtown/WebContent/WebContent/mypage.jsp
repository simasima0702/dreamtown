<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.mypage" var="lang" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootstrapのCSS読み込み -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
<!-- jQuery読み込み -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- BootstrapのJS読み込み -->
<script src="js/bootstrap.min.js"></script>

<s:include value="header.jsp" />
<title><s:text name="lang.mypage_title"/></title>
</head>
<body>
<div align="center">
<br><br>

<!-- サイドバーの表示 -->

	<s:iterator value="UserList"><s:include value="sidebar.jsp" />

<img src="img/mypage/line.png">

<br><br>

	<div class="maintitle"><img src="img/mypage/title3.png" class="maintitle"></div>

<br><br>
<p><s:text name="lang.mypage_comment"/></p>

<br>
<img src="img/mypage/line2.png">
<br><br>

	<div class="title"><img src="img/mypage/title2.png" class="title"></div>

<br>

<!-- ユーザー情報の表示 -->

	<table border="1" style="width: 400px; height: 300px;">
		<tr>

			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_userId"/></p></th>
			<td><s:property value="userId"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_password"/></p></th>
			<td><s:property value="password"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_kanziname"/></p></th>
			<td><s:property value="familyNameKanji"/>　<s:property value="givenNameKanji"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_huriname"/></p></th>
			<td><s:property value="familyNameKana"/>　<s:property value="givenNameKana"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_postal"/></p></th>
			<td><s:property value="postal"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_address"/></p></th>
			<td><s:property value="address"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_phoneNumber"/></p></th>
			<td><s:property value="phoneNumber"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_phoneEmail"/></p></th>
			<td><s:property value="phoneEmail"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_mobileEmail"/></p></th>
			<td><s:property value="mobileEmail"/></td>
		</tr>
		<tr>
			<th><p><img src="img/mypage/heart2.png"><s:text name="lang.mypage_birthday"/></p></th>
			<td><s:property value="birthday"/></td>
		</tr>
	</table>
	</s:iterator>
</div>
<div align="center">
<br>
<img src="img/mypage/line2.png">
<br><br>

<!-- 購入履歴の表示 -->

	<div class="title"><img src="img/mypage/title1.png" class="title"></div>

	<br><br>


		<s:iterator value="selectMypageList">
	<table border="1" style="width: 400px; height: 150px;">
		<tr>
			<th style="width:100px"><p><img src="img/mypage/heart.png"><s:text name="lang.mypage_itemName"/></p></th>
			<td><s:property value="itemName"/></td>
		</tr>
		<tr>
			<th style="width:100px"><p><img src="img/mypage/heart.png"><s:text name="lang.mypage_itemCount"/></p></th>
			<td><s:property value="itemCount"/></td>
		</tr>
		<tr>
			<th style="width:100px"><p><img src="img/mypage/heart.png"><s:text name="lang.mypage_purchaseDate"/></p></th>
			<td><s:property value="purchaseDate"/></td>
		</tr>
	</table>
	</s:iterator>


<br>
<img src="img/mypage/line.png">

<br><br>


</div>

<!-- フッターの表示 -->

<footer class="footer"><div align="center">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
		</div>
				</footer>
</body>


</html>