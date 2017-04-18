<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
<!-- bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<meta charset="UTF-8">

<!-- 国際化 -->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.header" var="lang" />

<!-- モーダル -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</head>

<body>
	<div class="back_img">


		<div class="logo">
			<a href="main_top.jsp"><img class="logo" src="img/logo.png"></a>
		</div>
		<div class="header-wrapper">

			<s:if test="(#session.userId != null && #session.loginFlg !=null) || #session.oauthId != null">
				<a href="#myModal" data-toggle="modal" style="color:#000000"><s:text name="lang.header.logout"/></a>
			</s:if>
			<s:else>
				<a class="header-wrapper" href="login.jsp"><s:text name="lang.header.login"/></a>
			</s:else>
			<s:if test="(#session.userId != null && #session.loginFlg !=null) ">
			<a class="header-wrapper" href="CartSelectAction"><s:text name="lang.header.cart"/></a>
			</s:if>
			<a class="header-wrapper" href="inquiry.jsp"><s:text name="lang.header.inquiry"/></a>

			<s:if test="#session.userId != null && #session.loginFlg !=null && #session.oauthId ==null">
			<a class="header-wrapper" href="<s:url action="MyPageAction"/>"><s:text name="lang.header.mypage"/></a>
			</s:if>
		</div>
	</div>







	<!-- モーダルです -->
			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title"><s:text name="lang.header.logoutmsg"></s:text></h4>
						</div>
						<div class="modal-footer">
							<s:form action="LogoutAction" theme="simple">
								<button type="submit"  class="btn btn-large btn-block btn-danger" ><s:text name="lang.header.logout"/></button>
												</s:form>
						</div>
					</div>
				</div>
			</div>
</body>
</html>