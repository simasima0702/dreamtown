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
<title>Addmin Login</title>
</head>
<body>
	<div class="wrapper">
		<s:include value="header.jsp" />
		<div class="container">

			<h2 class="errormsg">
				<s:property value="manageMsg" />
			</h2>

			<div class="col-sm-4"></div>



			<div class="col-sm-4">
				<s:form action="ManageAction" method="post" theme="simple">
					<table class="table table-bordered">
						<tr style="background-color: #454a51">
							<td><h3 class="login">Addmin Log In</h3></td>
						</tr>
						<tr>
							<td>Email&emsp;<span style="color: red;">※<s:text
										name="lang.umari.required" /></span><input type="email"
								maxlength="40" required="required" name="email" placeholder="email@gmail.com"/>
							</td>
						</tr>

						<tr>
							<td>pass&emsp;<span style="color: red;">※<s:text
										name="lang.umari.required" /></span><input type="password"
								required="required" name="password" maxlength="40" />
							</td>
						</tr>
						<tr>
							<td><a href="admin_top.jsp"><button type="submit"
										class="btn btn-primary" style="background-color: #454a51">Login</button></a></td>
						</tr>
					</table>
				</s:form>
			</div>
			<div class="col-sm-4"></div>
		</div>

	</div>

	<div class="push"></div>

	<footer class="footer">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
	</footer>

</body>
</html>