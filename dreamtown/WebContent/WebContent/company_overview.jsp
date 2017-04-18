<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="./css/category-item.css">
<meta charset="UTF-8">
<title><s:text name="%{getText('lang.companyOverview.Title')}"/></title>
</head>
<body>

<!-------------- ヘッダー -------------->
<jsp:include page="header.jsp" />
<!-------------- ヘッダー -------------->
<div class="col-sm-3"></div>
<div class="col-sm-6">
	<div class="contents">
		<h1>会社概要</h1>
		<br>

		<div class="nakayose">
			<table class="tbl">
				<tr>
					<th>会社名</th>
					<td>プログラマカレッジ（御茶ノ水研修所）</td>
				</tr>
				<tr>
					<th>住所</th>
						<td>〒113-0034<br> 東京都文京区湯島3-2-12 御茶ノ水天神ビル２F</td>
				</tr>
				<tr>
					<th>最寄り駅</th>
						<td>JR中央・総武線御茶ノ水駅　徒歩7分<br>
							東京メトロ丸ノ内御茶ノ水駅　徒歩7分</td>
				</tr>
				<tr>
					<th>電話番号</th>
						<td>0000-000-0000</td>
				</tr>

				<tr>
					<th>実施<br>カリキュラム</th>
					<td>
						<p>アルゴリズム演習/
						データベース演習/
						バージョン管理システム演習/
						Linux/UNIX演習/
						サイト構築の流れ/
						Java演習/
						Java-DB接続/
						Javaサーバーサイド技術/
						MVCモデルとフレームワーク/
						フレームワークを使ったサイト構築/
						プロトタイプサイト構築/
						ECサイト構築実践</p>
					</td>
				</tr>
			</table>
			<br>
		</div>

	</div>
	</div>
	<div class="col-sm-3"></div>
    </body>
</html>

