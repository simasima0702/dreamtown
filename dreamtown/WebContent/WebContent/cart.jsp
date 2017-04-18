<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.cart" var="lang" />

<title>Cart</title>
	<!-- bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<!-- css -->
	<link rel="stylesheet" href="css/sidebar.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/cart.css">
	<s:include value="header.jsp" />

</head>
<body>
	<!-- cartの中身が空だった場合の表示 -->
	<s:if test="%{total==0}">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>
			<FONT size="6"><s:text name="lang.cart.empty" /></FONT>
		</p>
		<br>
		<br>
		<br>
		<br>
		<br>
		<a href="main_top.jsp"><button type="button" class="btn btn-info">
				<s:text name="lang.cart.continue" />
			</button></a>
	</s:if>
	<s:else>
	<h1><s:text name="lang.cart.cart"/></h1>
	<div class="wrapper">
		<div class="container">
			<div class="col-sm-4"></div>
				<div class="table-wrapper">
					<table class="table table-bordered table-responsive">
						<tr>
							<th class="text-center"><p><s:text name="lang.cart.itemName"/><p></th>
							<th class="text-center"><p><s:text name="lang.cart.price"/></p></th>
							<th class="text-center" style="min-width:100px"><p><s:text name="lang.cart.itemCount"/></p></th>
							<th class="text-center"><p><s:text name="lang.cart.subTotal"/></p></th>
							<th class="text-center"><p><s:text name="lang.cart.delete"/></p></th>
						</tr>

						<s:iterator value="cartList">
								<tr>
									<td class="text-center"><p>
										<s:property value="itemName" />
								</p></td>
									<td class="text-center"><p>
										<fmt:formatNumber value="${price}" />
									<p></td>
									<td class="text-center" style="min-width:100px">
										<form action="CartUpdateAction" method="post">
											<input type="hidden" name="itemId" value="<s:property value="itemId"/>" />
											<s:select name="itemCount" list="itemStockList.get(userId)"
										    	onChange="this.form.submit()" cssClass="form-control"
										    	theme="css_xhtml"/>
										</form>
									</td>
									<td class="text-center"><p>
										<fmt:formatNumber value="${subTotal}" />
									</p></td>
									<td class="text-center">
										<form action="CartDeleteAction" method="post">
											<input type="hidden" name="itemId" value="<s:property value="itemId"/>" />
											<input type="submit" type="button" value="delete" class="form-control"/>
										</form>
									</td>
								</tr>
							</s:iterator>
					</table>
				</div>
			<div class="bottom-wrapper">
				<h1><s:text name="lang.cart.total"/>
					<fmt:formatNumber value="${total}" />
				</h1>
				<p><a href="main_top.jsp"><button type="button" class="btn btn-warning">
					<s:text name="lang.cart.continue"/>
				</button></a></p>
				<form action="GoSettlementAction" method="post">
					<button type="submit" class="btn btn-success"><s:text name="lang.cart.settlement"/></button>
				</form>
			</div>
		</div>
		</div>
	</s:else>
		<div class="push"></div>
		<footer class="footer"><div align="center">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
		</div>
		</footer>

</body>
</html>