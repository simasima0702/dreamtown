<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.settlement"
	var="lang" />
<link rel="stylesheet" type="text/css" href="./css/settlement.css">
<!-- BootstrapのCSS読み込み -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery読み込み -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- BootstrapのJS読み込み -->
<script src="js/bootstrap.min.js"></script>
<script>
	function showTotal(){
		var f = document.purchaseform;
		var totalAmount = 0;
		for(var i = 0 ; i < f.elements.length ; i++){
			if(f.elements[i].checked == true && !(f.elements[i].name == 'creditBrand')){
				totalAmount += parseInt(f.elements[(i-1)].value);
			}
		}
		var num_obj = new Number(totalAmount);

		target = document.getElementById("totalAmount")
        target.innerHTML = num_obj.toLocaleString();
	}
</script>
<title><s:text name="lang.settlement.title" /></title>
</head>
<body onLoad="showTotal()">
	<h2 align="center">
		<s:text name="%{getText('lang.settlement.request')}" />
	</h2>
	<s:if test="pass==1">
		<h3 align="center">
			<s:text name="%{getText('lang.settlement.errormsg1')}" />
		</h3>
	</s:if>
	<s:if test="pass==2">
		<h3 align="center">
			<s:text name="%{getText('lang.settlement.errormsg2')}" />
		</h3>
	</s:if>
	<s:elseif test="pass==3">
		<h3 align="center">
			<s:text name="%{getText('lang.settlement.errormsg3')}" />
		</h3>
	</s:elseif>
	<s:elseif test="pass==4">
		<h3 align="center">
			<s:text name="%{getText('lang.settlement.errormsg4')}" />
		</h3>
	</s:elseif>
	<s:elseif test="pass==5">
		<h3 align="center">
			<s:text name="%{getText('lang.settlement.errormsg5')}" />
		</h3>
	</s:elseif>
	<div class="width: 600;">
	<form method="post" action="SettlementAction" name="purchaseform">
		<table align="center" style="width: 500px;">
			<tr>
				<td><s:text name="lang.settlement.brand" /></td>
				<td><label> <input type="radio" name="creditBrand"
						value="1" required><img src="img/Visa.png">
				</label> <label> <input type="radio" name="creditBrand" value="2"><img
						src="img/Mastercard.png">
				</label> <label> <input type="radio" name="creditBrand" value="3"><img
						src="img/American-Express.png">
				</label></td>
			</tr><!--  -->
		</table>
		<table align="center" style="width: 300px;">
			<tr>
				<td><s:text name="lang.settlement.name" /></td>
				<td class="text"><input type="text" name="nameE" maxlength="30"
					required><br></td>
			</tr>
			<tr>
				<td><s:text name="%{getText('lang.settlement.cardnumber')}" />
				</td>
				<td class="text"><input type="text" name="cardNumber"
					maxlength="16" pattern="[1-9][0-9]*" minlength="15"
					title="<s:text name="lang.settlement.validation1" />" required><br>
				</td>
			</tr>
			</table>
			<div align="center">
						<s:text name="%{getText('lang.settlement.expirationdate')}" />　　
						<s:text name="lang.settlement.expirationmonth" />
						<select name="expirationMonth" required>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
				</select>
				<s:text name="lang.settlement.expirationyear" />
				<s:select name="expirationYear" list="yearList"/>
				</div>
				<table style="width: 300px;">
			<tr>
				<td><s:text name="lang.settlement.securitycode" /></td>
				<td class="text"><input type="password" name="securityCode"
					maxlength="4" pattern="[0-9][0-9]*" minlength="3"
					title="<s:text name="lang.settlement.validation2" />" required><br>
				</td>
			</tr>
			<tr>
				<td><s:text name="lang.settlement.shippingaddress" /></td>
				<td class="text"><input type="text" name="shippingAddress"
					maxlength="50" required><br></td>
			</tr>
		</table>
		<div style="width: 600px; margin: auto;">
			<h3 align="center">
				<s:text name="lang.settlement.itemsincart" />
			</h3>
			<table class="table table-condensed">
			<s:iterator value="cartList">
					<tr class="carttable">
						<td>
							<p class="text-success"><s:text name="lang.settlement.buythisitem" /></p>
						</td>
						<td>
							<p class="text-success"><s:text name="lang.settlement.itemimg" /></p>
						</td>
						<td style="width: 90px;">
							<p class="text-success"><s:text name="lang.settlement.purchasedetail" /></p>
						</td>
					</tr>
					<tr class="info">
						<td style="width: 60px;">
							<input type="hidden" name="subtotal" value="<s:property value="subTotal"/>">
							<input type="checkbox" name="purchaseItemId" value="<s:property value="itemId"/>" onclick="showTotal()">
						</td>
						<td style="width: 120px;"><img
							src='<s:property value="registrationDate"/>' style="width: 110px; height: 110px;"></td>
						<td style="width: 300px;">
							<table>
							<tr>
							<th>
							<p class="text-center">
								<s:text name="lang.settlement.itemname" />
							</p>
							</th>
							<td>
							<p class="text-center">
								<s:property value="itemName" />
							</p>
							</td>
							</tr>
							<tr>
							<th>
							<p class="text-center">
								<s:text name="lang.settlement.price" />
							</p>
							</th>
							<td>
							<p class="text-center">
								<fmt:formatNumber value="${price}" />
							</p>
							</td>
							</tr>
							<tr>
							<th>
							<p class="text-center">
								<s:text name="lang.settlement.ordercount" />
							</th>
							<td>
							<p class="text-center">
								<s:property value="itemCount" />
							</p>
							</td>
							</tr>
							<tr>
							<th>
							<p class="text-center">
								<s:text name="lang.settlement.subtotal" />
							</p>
							</th>
							<td>
							<p class="text-center">
								<fmt:formatNumber value="${subTotal}" />
							</p>
							</td>
							</tr>
							</table>
						</td>
					</tr>
						</s:iterator>
				</table>
		</div>
		<table>
			<tr>
				<td class="text-center">
					<s:text name="lang.settlement.totalamount" />
				</td>
				<td id="totalAmount"></td>
			</tr>
		</table>
		<table align="center">
			<tr>
				<td><s:submit
						value="%{getText('lang.settlement.purchaseconfirm')}"
						theme="simple" /> <a href='<s:url action="CartSelectAction"/>'><button
							type="button">
							<s:text name="lang.settlement.gobacktocart" />
						</button></a></td>
			</tr>
		</table>
	</form>
	</div>
</body>
<footer class="footer">
	<div align="center">
		<c:import url="http://localhost:8080/openconnect/footer.jsp" />
	</div>
</footer>
</html>