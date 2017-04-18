<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.itemUpdated"
	var="lang" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/item_updated.css">
<link rel="stylesheet" type="text/css" href="css/admin_header.css">
</head>
<body>
	<s:include value="admin_header.jsp" />
	<div class="title-wrapper">
		<h1>
			<s:text name="lang.itemUpdated.update" />
		</h1>
	</div>
	<div class="form-wrapper">
		<form action="AdminItemUpdateAction" class="form-design" method="post">
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.itemname" />
				</p>
				<input type="text" name="itemName"
					value="<s:property value="itemName"/>" required="required"
					maxlength="50" />
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.category" />
				</p>
				<select name="category" class="form-control">
					<option value="フィギュア・人形"><s:text
							name="lang.itemUpdated.figure" /></option>
					<option value="ブロック"><s:text name="lang.itemUpdated.brock" /></option>
					<option value="ままごと"><s:text
							name="lang.itemUpdated.playhouse" /></option>
					<option value="プログラミング"><s:text
							name="lang.itemUpdated.programming" /></option>
				</select>
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.price" />

				</p>
				<input type="number" name="price"
					value="<fmt:formatNumber value="${price}" groupingUsed="false"/>"
					required="required" min="1" max="9999999">
			</div>

			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.stock" />
				</p>
				<select name="stock" class="form-control">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
				</select>
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.img1" />
				</p>
				<input type="file" name="itemImg01"
					value="<s:property value="itemImg01"/>" accept="image/*"
					required="required">
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.img2" />
				</p>
				<input type="file" name="itemImg02"
					value="<s:property value="itemImg02"/>" accept="image/*"
					required="required">
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.img3" />
				</p>
				<input type="file" name="itemImg03"
					value="<s:property value="itemImg03"/>" accept="image/*"
					required="required">
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.img4" />
				</p>
				<input type="file" name="itemImg04"
					value="<s:property value="itemImg04"/>" accept="image/*"
					required="required">
			</div>
			<div class="form-item-wrapper">
				<p>
					<s:text name="lang.itemUpdated.itemFeature" />
				</p>
				<select name="itemFeature" class="form-control">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
				</select>
			</div>
			<div class="form-detail-wrapper">
				<p>
					<s:text name="lang.itemUpdated.itemdetail" />
				</p>
				<textarea name="itemDetail" rows="4" cols="60" maxlength="255"
					required="required"><s:property value="itemDetail" /></textarea>
			</div>
			<input type="hidden" name="itemId"
				value="<s:property value="itemId"/>">
			<div class="form-submit">
				<input type="submit" value="送信">
			</div>
		</form>
	</div>

</body>
</html>