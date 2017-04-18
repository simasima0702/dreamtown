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
<fmt:setBundle basename="com.internousdev.umari.property.moreDetail"
	var="lang" />
<title><s:text name="lang.detail.about_products" /></title>
<link href="css//sidebar.css" rel="stylesheet" type="text/css">
<link href="css//more_detail.css" rel="stylesheet" type="text/css">
<link href="css//bootstrap.css" rel="stylesheet" type="text/css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/more_detail.js"></script>
<s:include value="header.jsp" />
</head>
<body>
	<s:include value="sidebar.jsp" />
	<div id="right_frame">
		<s:iterator value="itemList">
			<div class="contents-wrapper">

				<ul class="sub-pictures-wrapper">
					<li><img src="<s:property value="itemImg02"/>" class="sub-img"></li>
					<li><img src="<s:property value="itemImg03" />"
						class="sub-img"></li>
					<li><img src="<s:property value="itemImg04" />"
						class="sub-img"></li>

				</ul>
				<div class="main-picture-wrapper">
					<img src="<s:property value="itemImg01" />" class="main-img">
				</div>
				<div class="message-wrapper">
					<s:if test="week==true">
					<div class="new">
							<img src="img/new.gif" style="width:80px; height:30px;"  class="img-responsive">
					</div>
					</s:if>
					<s:else>
					<div class="new">
							<img src="img/sale3.jpg" style="width:80px; height:30px;"  class="img-responsive">
					</div>
					</s:else>
					<h2 class="title" style="width:600px; word-break: break-all;">
						<s:property value="itemName" />
					</h2>
					<div class="detail" style="width:600px; word-break: break-all;">
						<h4>
							<s:text name="lang.detail.about_product" />
							:
						</h4>
						<p>
							<s:property value="itemDetail" />
						</p>
					</div>
					<br>
					<div class="detail">
						<h4>
							<s:text name="lang.detail.price" />
							:
							<fmt:formatNumber value="${price}" />
							<s:text name="lang.detail.yen" />
						</h4>
					</div>
					<s:if test="stockList.size() ==0">
						<div class="detail">
							<img src="img/soldout.png">
						</div>
					</s:if>
					<s:else>
						<div class="detail">
							<form action="CartInsertAction" method="post">
								<input type="hidden" name="price"
									value="<s:property value="price"/>" /> <input type="hidden"
									name="itemName" value="<s:property value="itemName"/>" /> <input
									type="hidden" name="itemId"
									value="<s:property value="itemId"/>" />
								<h4>
									<s:text name="lang.detail.quantity" />
									:
									<s:select name="itemCount" list="stockList" />
								</h4>
								<s:if test="msg == true">
									<h1><s:text name="lang.detail.incart" /></h1>
									<h4><s:text name="lang.detail.please" /></h4>
								</s:if>
								<s:else>
									<button type="submit" class="btn btn-danger">
										<s:text name="lang.detail.cart" />
										<span class="glyphicon glyphicon-shopping-cart"></span>
									</button>
								</s:else>
							</form>
						</div>
					</s:else>
				</div>
			</div>
		</s:iterator>
	</div>
	<div align="center" class="clear">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
	</div>

</body>
</html>