<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--国際化-->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.adminTop"
	var="lang" />



<title><s:text name="lang.admin_top.title"></s:text></title>



<!-- css -->
<link rel="stylesheet" type="text/css" href="css/admin_header.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.css"
	rel="stylesheet" />
<!-- bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<!--ライブラリ読み込み -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.js"></script>

<!--描画箇所 -->
<canvas id="mycanvas" height="500" width="500"
	style="POSITION: absolute; Z-INDEX: 2; VISIBILITY: visible; TOP: 550px; left: 5%;"></canvas>

<!--凡例箇所 -->
<ul id="chart_legend"></ul>
</head>
<body>


	<s:include value="admin_header.jsp" />

	<!-- 円グラフ用の売り上げ個数用のデータ -->
	<form name="form_test">
		<input type="hidden" name="input_test1"
			value="<s:property value="figureCount"/>"> <input
			type="hidden" name="input_test2"
			value="<s:property value="brockCount"/>"> <input
			type="hidden" name="input_test3"
			value="<s:property value="playHouseCount"/>"> <input
			type="hidden" name="input_test4"
			value="<s:property value="programmingCount"/>">
	</form>


	<form name="form_list">
		<!-- フィギュアの一週間分の売り上げ金額用リスト取得 -->
		<input type="hidden" name="figureList0"
			value="<s:property value="figureList.get(0)"/>"> <input
			type="hidden" name="figureList1"
			value="<s:property value="figureList.get(1)"/>"> <input
			type="hidden" name="figureList2"
			value="<s:property value="figureList.get(2)"/>"> <input
			type="hidden" name="figureList3"
			value="<s:property value="figureList.get(3)"/>"> <input
			type="hidden" name="figureList4"
			value="<s:property value="figureList.get(4)"/>"> <input
			type="hidden" name="figureList5"
			value="<s:property value="figureList.get(5)"/>"> <input
			type="hidden" name="figureList6"
			value="<s:property value="figureList.get(6)"/>">


		<!-- ブロックの一週間分の売り上げ金額用リストの取得 -->
		<input type="hidden" name="brockList0"
			value="<s:property value="brockList.get(0)"/>"> <input
			type="hidden" name="brockList1"
			value="<s:property value="brockList.get(1)"/>"> <input
			type="hidden" name="brockList2"
			value="<s:property value="brockList.get(2)"/>"> <input
			type="hidden" name="brockList3"
			value="<s:property value="brockList.get(3)"/>"> <input
			type="hidden" name="brockList4"
			value="<s:property value="brockList.get(4)"/>"> <input
			type="hidden" name="brockList5"
			value="<s:property value="brockList.get(5)"/>"> <input
			type="hidden" name="brockList6"
			value="<s:property value="brockList.get(6)"/>">

		<!-- おままごとの一週間分の売り上げ金額用リストの取得 -->
		<input type="hidden" name="playHouseList0"
			value="<s:property value="playHouseList.get(0)"/>"> <input
			type="hidden" name="playHouseList1"
			value="<s:property value="playHouseList.get(1)"/>"> <input
			type="hidden" name="playHouseList2"
			value="<s:property value="playHouseList.get(2)"/>"> <input
			type="hidden" name="playHouseList3"
			value="<s:property value="playHouseList.get(3)"/>"> <input
			type="hidden" name="playHouseList4"
			value="<s:property value="playHouseList.get(4)"/>"> <input
			type="hidden" name="playHouseList5"
			value="<s:property value="playHouseList.get(5)"/>"> <input
			type="hidden" name="playHouseList6"
			value="<s:property value="playHouseList.get(6)"/>">

		<!-- プログラミングの一蹴幹部の売り上げ金額用リストの取得 -->
		<input type="hidden" name="programmingList0"
			value="<s:property value="programmingList.get(0)"/>"> <input
			type="hidden" name="programmingList1"
			value="<s:property value="programmingList.get(1)"/>"> <input
			type="hidden" name="programmingList2"
			value="<s:property value="programmingList.get(2)"/>"> <input
			type="hidden" name="programmingList3"
			value="<s:property value="programmingList.get(3)"/>"> <input
			type="hidden" name="programmingList4"
			value="<s:property value="programmingList.get(4)"/>"> <input
			type="hidden" name="programmingList5"
			value="<s:property value="programmingList.get(5)"/>"> <input
			type="hidden" name="programmingList6"
			value="<s:property value="programmingList.get(6)"/>">
	</form>





	<h2 style="text-align: center; margin-top: 100px;">
		<s:text name="lang.admin_top.history1"></s:text>
	</h2>




	<!-- 折れ線グラフ -->
	<div id="chart"></div>
	<script type="text/javascript">
		//フィギュア用の1週間リスト
		var fig7 = document.form_list.figureList0.value;
		var fig6 = document.form_list.figureList1.value;
		var fig5 = document.form_list.figureList2.value;
		var fig4 = document.form_list.figureList3.value;
		var fig3 = document.form_list.figureList4.value;
		var fig2 = document.form_list.figureList5.value;
		var fig1 = document.form_list.figureList6.value;

		//ブロック用の1週間リスト
		var blo7 = document.form_list.brockList0.value;
		var blo6 = document.form_list.brockList1.value;
		var blo5 = document.form_list.brockList2.value;
		var blo4 = document.form_list.brockList3.value;
		var blo3 = document.form_list.brockList4.value;
		var blo2 = document.form_list.brockList5.value;
		var blo1 = document.form_list.brockList6.value;

		//おままごと用の1週間リスト
		var plh7 = document.form_list.playHouseList0.value;
		var plh6 = document.form_list.playHouseList1.value;
		var plh5 = document.form_list.playHouseList2.value;
		var plh4 = document.form_list.playHouseList3.value;
		var plh3 = document.form_list.playHouseList4.value;
		var plh2 = document.form_list.playHouseList5.value;
		var plh1 = document.form_list.playHouseList6.value;

		//プログラミング用の1週間リスト
		var pro7 = document.form_list.programmingList0.value;
		var pro6 = document.form_list.programmingList1.value;
		var pro5 = document.form_list.programmingList2.value;
		var pro4 = document.form_list.programmingList3.value;
		var pro3 = document.form_list.programmingList4.value;
		var pro2 = document.form_list.programmingList5.value;
		var pro1 = document.form_list.programmingList6.value;

		var chart = c3
				.generate({
					data : {
						columns : [
								[ 'figure', fig1, fig2, fig3, fig4, fig5, fig6,
										fig7 ],
								[ 'brock2', blo1, blo2, blo3, blo4, blo5, blo6,
										blo7 ],
								[ 'playHouse', plh1, plh2, plh3, plh4, plh5,
										plh6, plh7 ],
								[ 'programming', pro1, pro2, pro3, pro4, pro5,
										pro6, pro7 ] ]
					}
				});
	</script>

<h2 style="text-align:center;margn-top:20px;"><s:text name="lang.admin_top.history2"></s:text></h2>

	<!-- 円グラフ -->
	<script type="text/javascript">
		var data = [ {
			value : document.form_test.input_test1.value,
			color : "#c93a40",
			highlight : "#d5848b",
			label : "Figure"
		}, {
			value : document.form_test.input_test2.value,
			color : "#56a764",
			highlight : "#b3d3ac",
			label : "Brock"
		}, {
			value : document.form_test.input_test3.value,
			color : "#fff001",
			highlight : "#fff353",
			label : "Playhouse"
		}, {
			value : document.form_test.input_test4.value,
			color : "#0074bf",
			highlight : "#7fc2ef",
			label : "Programming"
		} ];

		var myChart = new Chart(document.getElementById("mycanvas").getContext(
				"2d")).Doughnut(data);
	</script>


		<table style="position:absolute;left:60%;margin-top:200px; font-size:30px;">
		<tr><th style="width:100px">Figure</th><td style="width:300px">￥<s:property value="figureSales"/></td></tr>
		<tr><th style="width:100px">Block</th><td style="width:300px">￥<s:property value="brockSales"/></td></tr>
		<tr><th style="width:100px">PlayHouse</th><td style="width:300px">￥<s:property value="playHouseSales"/></td></tr>
		<tr><th style="width:100px">Programming</th><td style="width:300px">￥<s:property value="programmingSales"/></td></tr>
		</table>

</body>
</html>