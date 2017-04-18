<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inquiry</title>

<!-- 国際化 -->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.inquiry" var="lang" />

</head>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/sidebar.css" type="text/css">
<link rel="stylesheet" href="css/inquiry.css" type="text/css">

<!-- ヘッダー -->
<s:include value="header.jsp"></s:include>



<body>

<!-- サイドバー -->
<s:include value="sidebar.jsp"></s:include>

<article>

	<DIV align="center">

<br>

<img src="img/mypage/line.png">


            <!-- お問い合わせ -->
            <h2 class="center">
                <s:text name=" %{getText('lang.inquiry.top')}" />
            </h2>
           <s:form action="InquiryAction" name="info" theme="simple">
            <ul style="list-style:none;">
            <!-- 名前------------------------------------------------------->
                <li class="center">
                    <s:text name="%{getText('lang.inquiry.name')}" />
                </li>
                <li class="center">
                    <s:textfield name="infoName" placeholder="%{getText('lang.inquiry.name2')}" required="required" maxlength="20" />
                </li>


            <!-- メールアドレス ------------------------------------------------------->
                <li class="center">
                    <s:text name="%{getText('lang.inquiry.email')}" />
                </li>
                <li class="center">
                    <s:textfield name="emailAddress" value="%{#session.emailAddress}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true" maxlength="50"  placeholder="%{getText('lang.inquiry.email2')}  " />
                </li>
            <!-- お問い合わせ内容 ------------------------------------------------------->
                <li class="center">
                    <s:text name=" %{getText('lang.inquiry.content')} " />
                </li>
                <li class="center">
                    <s:textarea name="content" cols="50" rows="10" maxlength="200" required="true" placeholder="%{getText('lang.inquiry.content3')}  " />
                </li>
            <!-- サブミットボタン ------------------------------------------------------->
                <li class="center">
                    <button type="submit"><s:text name="lang.inquiry.send"></s:text></button>
                </li>
            </ul>
            </s:form>


<br><br>

<img src="img/mypage/line.png">

</DIV>
            <!-- フッター -->
                <c:import url="http://localhost:8080/openconnect/footer.jsp"/>
        </article>



</body>
</html>