<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>contact</title>

<!-- 国際化 -->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.contact" var="lang" />

<!-- css -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/admin_inquiry.css" type="text/css">


</head>

<body>

<br>
<br>
<br>
<br>
<article>
<s:include value="admin_header.jsp"></s:include>
<h2 class="center">
<s:text name="lang.adminCheck.title" /></h2>

<br>
<br>

	<s:form action="AdminInquiryAction" theme="simple">
		<!-- メールアドレス -->
		<div class="center">
			<label for="exampleInputEmail"><s:text
					name="lang.adminCheck.email" /></label>
			<s:textfield name="mailSearch" placeholder="%{getText('lang.adminCheck.email')}" theme="simple" />
		</div>

		<br>

		<!-- 氏名 -->
		<div  class="center">
			<label for="exampleInputName"><s:text
					name="lang.adminCheck.name" /></label>
			<s:textfield name="searchName"  placeholder="%{getText('lang.adminCheck.name')}" theme="simple" />
		</div>
		<br>

		<!-- ソート -->
		<div class="center">
		<select name="searchSort" >
			<option value="-1"><s:text name="%{getText('lang.adminCheck.newsort')}" /></option>
			<option value="1"><s:text name="%{getText('lang.adminCheck.oldsort')}"  /></option>
		</select>

		<!-- 検索ボタン -->
		<s:submit value="%{getText('lang.adminCheck.search')}" />
		</div>
	</s:form>

	<br>
	<br>

<!-- mongo表示はココかな？？？ -->

<s:if test="inquiryList.size() !=0">

		<s:iterator value="displayList" status="rs">
			<table border="1">
				<!-- 氏名 -->
				<tr>
				<th bgcolor="#c0ffc0">【<s:text name="lang.adminCheck.name"  />】</th>
				<td style="width:600px; word-break: break-all;"><s:property value="infoName" /></td>
				</tr>
				<!-- メールアドレス -->
				<tr>
				<th bgcolor="#c0ffc0">【<s:text name="lang.adminCheck.email"  />】</th>
				<td style="width:600px; word-break: break-all;"><s:property value="emailAddress" /></td>
				</tr>
				<!-- 問い合わせ内容 -->
				<tr>
				<th bgcolor="#c0ffc0">【<s:text name="lang.adminCheck.comment" />】</th>
				<td style="width:600px; word-break: break-all;"><s:property value="content" /></td>
				</tr>
				<!-- 問い合わせ日時 -->
				<tr>
				<th bgcolor="#c0ffc0">【<s:text name="lang.adminCheck.registrationDate" />】</th>
				<td><s:property value="regDate" /></td></tr>
			</table>
			<br>
		</s:iterator>


			<!-- ページネーション -->

				<div class="center">
					<ul style="list-style:none;">
						<!-- ページネーション（1ページ目なら） -->
						<s:if test="currentPage==0">
						<li><span>&laquo;<s:text name="%{getText('lang.adminCheck.back')}" /></span></li>
						</s:if>

						<!-- 1ページ目以外なら -->
						<s:else>
							<li><a href='<s:url action="AdminInquiryAction">
												<s:param name="currentPage" value="currentPage -1"/>
												<s:param name="mailSearch" value="mailSearch"/>
												<s:param name="searchName" value="searchName"/>
												<s:param name="searchSort" value="searchSort"/>
												</s:url>'>&laquo;<s:text name="%{getText('lang.adminCheck.back')}" />
									</a>
							</li>
						</s:else>

						<s:iterator value="arrayPageCount" status="rs">
							<s:if test="#rs.index &gt;= currentPage -leftPage &amp;&amp; #rs.index &lt;= currentPage +rightPage">
							<s:if test="Page == #rs.index">
							<li class="active"><span><s:property value="#rs.count" /> </span></li>
							</s:if>
							<s:else>
							<li><a href='<s:url action="AdminInquiryAction">
												<s:param name="currentPage" value="#rs.index"/>
												<s:param name="mailSearch" value="mailSearch"/>
												<s:param name="searchName" value="searchName"/>
												<s:param name="searchSort" value="searchSort"/>
												</s:url>'><s:property value="#rs.count" />
									</a>
							</li>
							</s:else>
							</s:if>
						</s:iterator>

						<!-- ページネーション（最終ページなら） -->
						<s:if test="currentPage == pageCount-1">
						<li><s:text name="%{getText('lang.adminCheck.next')}" />&raquo;</li>
						</s:if>

						<s:elseif test="pageCount == 1">
						<li><span>2</span></li>
						</s:elseif>

						<!-- 最終ページ以外なら -->
						<s:else>
							<li><a href='<s:url action="AdminInquiryAction">
							<s:param name="currentPage" value="currentPage+1"/>
							<s:param name="mailSearch" value="mailSearch"/>
							<s:param name="searchName" value="searchName"/>
							<s:param name="searchSort" value="searchSort"/>
							</s:url>'><s:text name="%{getText('lang.adminCheck.next')}" />&raquo;</a>
							</li>
						</s:else>
					</ul>

				</div>

</s:if>

</article>




<!-- jQuery部分  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" type="text/javascript"></script>

</body>
</html>