<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.itemList"
	var="lang" />
<title>LINEUP</title>
<link href="css//sidebar.css" rel="stylesheet" type="text/css">
<link href="css//items.css" rel="stylesheet" type="text/css">
<link href="css//bootstrap.css" rel="stylesheet" type="text/css">
<s:include value="header.jsp" />
</head>
<body>
	<div class="contents-wrapper">
		<div class="side">
			<s:include value="sidebar.jsp" />
		</div>
		<br>
		<div class="page-header" align="center">
			<s:if test="category != null">
				<s:if test="category=='フィギュア・人形'">
					<h1>
						<s:text name="lang.itemList.doll" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:if>
				<s:elseif test="category=='ブロック'">
					<h1>
						<s:text name="lang.itemList.brock" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:elseif>
				<s:elseif test="category=='ままごと'">
					<h1>
						<s:text name="lang.itemList.play_house" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:elseif>
				<s:elseif test="category=='プログラミング'">
					<h1>
						<s:text name="lang.itemList.programming" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:elseif>
			</s:if>
			<s:elseif test="itemFeature != null">
				<s:if test="itemFeature == 1">
					<h1>
						<s:text name="lang.itemList.feature1" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:if>
				<s:if test="itemFeature == 2">
					<h1>
						<s:text name="lang.itemList.feature2" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:if>
				<s:if test="itemFeature == 3">
					<h1>
						<s:text name="lang.itemList.feature3" />
						<small><s:text name="lang.itemList.subtitile" /></small>
					</h1>
				</s:if>
			</s:elseif>
			<s:elseif test="searchName != null">
				<h1>
					<s:text name="lang.itemList.search_result" />
					<small><s:text name="lang.itemList.subtitile" /></small>
				</h1>
			</s:elseif>
		</div>
		<div class="form-wrapper">
			<s:if test="%{items.isEmpty()}">
				<h2>
					<s:text name="lang.itemList.message" />
				</h2>
			</s:if>
			<s:elseif test="displayList.size() <= 0">
				<div style="width: 100%; height: 600px">
					<div style="margin-right: 200px">
						<s:text name="lang.itemList.message" />
					</div>
				</div>
			</s:elseif>
			<s:else>
				<s:iterator value="displayList">
					<form action="GoItemDetailAction" class="form1" method="post">
						<input type="hidden" name="itemId"
							value="<s:property value="itemId"/>" /><input type="image"
							src="<s:property value="itemImg01"/>" class="image">
						<div class="message" style="width:275px; word-break: break-all;">
							<h4>
								<s:text name="lang.itemList.item" />
								：
								<s:property value="itemName" />
							</h4>
							<h4>
								<s:text name="lang.itemList.price" />
								：
								<fmt:formatNumber value="${price}" />
								<s:text name="lang.itemList.yen" />
							</h4>
						</div>
					</form>
				</s:iterator>
			</s:else>
		</div>
	</div>
	<div align="center" class="clear">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
	</div>
</body>
</html>