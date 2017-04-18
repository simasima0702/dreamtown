<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.ItemAdd"
	var="lang" />
<title><s:text name="lang.itemAdd.title" /></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/admin_header.css">
<link rel="stylesheet" type="text/css" href="css/item_add.css">
</head>
<body>
	<div class="back_img">
		<s:include value="admin_header.jsp" />
		<div class="yohaku"></div>
		<div class="title-wrapper">
			<h1>
				<s:text name="lang.itemAdd.subtitle" />
			</h1>
		</div>
		<h3>
			<s:property value="%{getText(successMsg)}" />
			<s:property value="%{getText(errorMsg)}" />
		</h3>



		<div class="form-wrapper">
			<form action="ItemAddAction" class="form-design" method="post">
				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.item_name" />
						：
					</p>
					<input type="text" name="itemName" required="required" maxlength="50">
				</div>
				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.category" />
						：
					</p>
					<select name="category" class="form-control" required="required" >
						<option value="フィギュア・人形"><s:text name="lang.itemAdd.doll" /></option>
						<option value="ブロック"><s:text name="lang.itemAdd.brock" /></option>
						<option value="ままごと"><s:text
								name="lang.itemAdd.playhouse" /></option>
						<option value="プログラミング"><s:text
								name="lang.itemAdd.programming" /></option>
					</select>
				</div>
				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.price" />
						：
					</p>
					<input type="number" name="price" min="1" max="9999999" required="required">
				</div>

				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.stock" />
						：
					</p>
					<select name="stock" class="form-control" required="required">
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
						<s:text name="lang.itemAdd.itemimg01" />
						：
					</p>
					<input type="file" name="itemImg01" size="30" required="required" accept="image/*">
				</div>
				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.itemimg02" />
						：
					</p>
					<input type="file" name="itemImg02" required="required" accept="image/*">
				</div>
				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.itemimg03" />
						：
					</p>
					<input type="file" name="itemImg03" required="required" accept="image/*">
				</div>
				<div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.itemimg04" />
						：
					</p>
					<input type="file" name="itemImg04" required="required" accept="image/*">
				</div>
                <div class="form-item-wrapper">
					<p>
						<s:text name="lang.itemAdd.itemFeature" />
						：
					</p>
					<select name="itemFeature" class="form-control" required="required">
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
						<s:text name="lang.itemAdd.itemdetail" />
						：
					</p>
                <textarea name="itemDetail" maxlength="255" required="required"></textarea>
                </div>


				<div class="form-submit">
						<input  type="submit" name="submit"   value=<s:text name="lang.itemAdd.submit" />>
				</div>
			</form>
		</div>

	</div>
</body>
</html>