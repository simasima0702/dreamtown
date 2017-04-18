<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.history"
	var="lang" />
<title><s:text name="lang.history.title" /></title>
<link rel="stylesheet" type="text/css" href="css/admin_header.css">
<link rel="stylesheet" type="text/css" href="css/history.css">
</head>
<body>
	<s:include value="admin_header.jsp" />
	<h1><s:text name="lang.history.title" /></h1>
	<s:if test="%{!InfoList.isEmpty()}">
		<div class="purchaseHistory" align="center">
			<table border=1,width= "1000" ,cellspacing="0" ,cellpadding="5"
				class="purchaseTable">
				<tr style="background: #ffb6c1">
					<th><s:text name="lang.history.user_id" /></th>
					<th><s:text name="lang.history.item_id" /></th>
					<th><s:text name="lang.history.stock" /></th>
					<th><s:text name="lang.history.method" /></th>
					<th><s:text name="lang.history.address" /></th>
					<th><s:text name="lang.history.purchase" /></th>
					<th><s:text name="lang.history.update" /></th>
				</tr>
				<s:iterator value="InfoList">
					<s:iterator>
						<tr>
							<td><s:property value="userId" /></td>
							<td><s:property value="itemId" /></td>
							<td><s:property value="itemCount" /></td>
							<td><s:if test="paymentMethod == 1">
									visa
									</s:if> <s:elseif test="paymentMethod == 2">
									mastercard
									</s:elseif> <s:elseif test="paymentMethod == 3">
									amex
									</s:elseif> <s:else>
									ERROR
									</s:else></td>
							<td><s:property value="shippingAddress" /></td>
							<td><s:property value="purchaseDate" /></td>
							<td><s:property value="updatedDate" /></td>
						</tr>
					</s:iterator>
				</s:iterator>

			</table>
		</div>
	</s:if>
	<s:else>
		<div class="message-wrapper">
			<h2><s:text name="lang.history.message" /></h2>
		</div>
	</s:else>
</body>
</html>