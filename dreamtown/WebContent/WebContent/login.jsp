<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<!-- css -->
<link rel="stylesheet" href="css/sidebar.css" type="text/css">
<link rel="stylesheet" href="css/login.css" type="text/css">
<!-- 国際化 -->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.login"
	var="lang" />

<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div class="wrapper">
		<s:include value="header.jsp" />
		<h2 class="errormsg">
			<s:property value="loginErrorMsg" />
		</h2>
		<div class="container">

			<div class="col-sm-4"></div>
			<s:form action="LoginAction" method="post" theme="simple">
				<div class="col-sm-4">
					<table class="table table-bordered">
						<tr style="background-color: #2c71e0;">
							<td><h3 class="login">Login</h3></td>
						</tr>
						<tr>
							<td>Email&emsp;<span style="color: red;">※<s:text
										name="lang.umari.required" /></span><input type="email"
								maxlength="40" required="required" name="email"  placeholder="email@gmail.com"/>
							</td>
						</tr>

						<tr>
							<td>pass&emsp;<span style="color: red;">※<s:text
										name="lang.umari.required" /></span><input type="password"
								required="required" maxlength="30" name="password" />
							</td>
						</tr>
						<tr>
							<td><button type="submit" class="btn btn-primary">Login</button></td>
						</tr>

					</table>
				</div>
			</s:form>
			<div class="col-sm-4"></div>
		</div>
		<div class="container">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<table class="table table-bordered">
					<tr>
						<td><a href="login-twitter"><img src="img/twitter.jpg"
								style="width: 200px"></a></td>
					</tr>
					<tr>
						<td><s:url var="facebook" action="GoFacebookAction" /> <s:a
								href="%{facebook}">
								<img src="img/facebook.jpg" style="width: 200px">
							</s:a></td>
					</tr>
				</table>
			</div>
			<div class="col-sm-4"></div>
		</div>
		<a href="manage.jsp">
			<button type="button" class="managebutton">
				<h4 class="login">
					<s:text name="lang.umari.admin" />
				</h4>
			</button>
		</a>
	</div>

	<br>
	<br>


<s:form action="LoginAction" method="post" theme="simple">
<input type="text" name="name" required="required" maxlength="30" placeholder="family_name">
<input type="password" name="password" required="required"  maxlength="30" placeholder="pass">
<button type="submit">Emergency</button>
</s:form>


	<div class="push"></div>

	<footer class="footer">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
	</footer>

</body>
</html>