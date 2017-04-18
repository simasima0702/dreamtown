<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.item"
	var="lang" />
<title><s:text name="lang.item.title" /></title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/admin_header.css">
<link rel="stylesheet" type="text/css" href="css/item.css">
<link href="css/modal.css" rel="stylesheet">
<script src="js/modal.js"></script>
</head>
<body>
	<s:include value="admin_header.jsp" />
	<div class="title">
		<h1>
			<s:text name="lang.item.list" />
		</h1>
	</div>
	<h3>
		<s:property value="%{getText(resultMsg)}" />
	</h3>
	<h3>
		<s:property value="%{getText(resultMsgNg)}" />
	</h3>
	<h3>
		<s:property value="%{getText(successMsg)}" />
	</h3>
	<h3>
		<s:property value="%{getText(errorMsg)}" />
	</h3>
	<div class="search-wrapper">
		<form action="SearchAction" method="post">
			<select name="searchSort" class="form-select">
				<option value="" disabled></option>
				<option value="1"><s:text name="lang.item.sort1" /></option>
				<option value="2"><s:text name="lang.item.sort2" /></option>
				<option value="3"><s:text name="lang.item.sort3" /></option>
				<option value="4"><s:text name="lang.item.sort4" /></option>
				<option value="5"><s:text name="lang.item.sort5" /></option>
				<option value="6"><s:text name="lang.item.sort6" /></option>
			</select> <input type="submit" class="form-submit"
				value=<s:text name="lang.item.sort" />>
		</form>
	</div>

	<div class="search-wrapper">
		<form action="SearchItemAction" method="post">
			<input type="text" name="searchName"
				placeholder="<s:text name="lang.item.text" />" /> <input
				type="submit" class="form-submit"
				value=<s:text name="lang.item.search" />>
		</form>
	</div>



	<div class="item-wrapper">


		<table>
			<tr>
				<th class="col-lg-1"><s:text name="lang.item.item_id" /></th>
				<th class="col-lg-1"><s:text name="lang.item.item_name" /></th>
				<th class="col-lg-1"><s:text name="lang.item.category" /></th>
				<th class="col-lg-1"><s:text name="lang.item.price" /></th>
				<th class="col-lg-1"><s:text name="lang.item.item_detail" /></th>
				<th class="col-lg-1"><s:text name="lang.item.item_img01" /></th>
				<th class="col-lg-1"><s:text name="lang.item.item_img02" /></th>
				<th class="col-lg-1"><s:text name="lang.item.item_img03" /></th>
				<th class="col-lg-1"><s:text name="lang.item.item_img04" /></th>
				<th class="col-lg-1"><s:text name="lang.item.stock" /></th>
				<th class="col-lg-1"><s:text name="lang.item.feature" /></th>
				<th class="col-lg-1"></th>
			</tr>
			<s:iterator value="itemList">
				<s:iterator>
					<tr>
						<td><s:property value="itemId" /></td>
						<td><s:property value="itemName" /></td>
						<td><s:property value="category" /></td>
						<td><fmt:formatNumber value="${price}" />
							<s:text name="lang.item.yen" /></td>
						<td><div
								style="height: 100px; width: 100px; overflow-y: scroll;">
								<s:property value="itemDetail" />
							</div></td>
						<td><img src="<s:property value="itemImg01" />"
							class="itemImg"></td>
						<td><img src="<s:property value="itemImg02" />"
							class="itemImg"></td>
						<td><img src="<s:property value="itemImg03" />"
							class="itemImg"></td>
						<td><img src="<s:property value="itemImg04" />"
							class="itemImg"></td>
						<td><s:property value="stock" /></td>
						<td><s:property value="itemFeature" /></td>
						<td><form action="ItemSelectAction" method="post">
								<input type="hidden" name="itemId"
									value="<s:property value="itemId"/>" /> <input type="hidden"
									name="itemName" value="<s:property value="itemName"/>" /> <input
									type="hidden" name="category"
									value="<s:property value="category"/>" /> <input type="hidden"
									name="price" value="<s:property value="price"/>" /> <input
									type="hidden" name="itemDetail"
									value="<s:property value="itemDetail"/>" /> <input
									type="hidden" name="itemImg01"
									value="<s:property value="itemImg01"/>" /> <input
									type="hidden" name="itemImg02"
									value="<s:property value="itemNImg02"/>" /> <input
									type="hidden" name="itemImg03"
									value="<s:property value="itemImg03"/>" /> <input
									type="hidden" name="itemImg04"
									value="<s:property value="itemImg04"/>" /> <input
									type="hidden" name="stock" value="<s:property value="stock"/>" />
								<input type="hidden" name="itemFeature"
									value="<s:property value="itemFeature"/>" />

								<button type="submit" class="btn btn-default btn-lg">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								</button>
							</form>

							<form action="AdminDeleteAction" method="post">
								<input type="hidden" name="itemId"
									value="<s:property value="itemId"/>" />
								<button type="submit" class="btn btn-default btn-lg" >
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
								</button>
							</form></td>
					</tr>

				</s:iterator>
			</s:iterator>

		</table>

	</div>
</body>
</html>