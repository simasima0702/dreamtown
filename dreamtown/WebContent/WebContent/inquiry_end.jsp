<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inquiry_end</title>

<!-- 国際化 -->
<fmt:setLocale value="${pageContext.request.locale.language}" />
<fmt:setBundle basename="com.internousdev.umari.property.inquiry_end" var="lang" />

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/sidebar.css" type="text/css">
<link rel="stylesheet" href="css/inquiry.css" type="text/css">
<link rel="stylesheet" href="css/inquiry_end.css" type="text/css">


          <!--ヘッダー-->
            <s:include value="header.jsp"></s:include>
</head>


<body>



<div>

<article>


            <!-- お問い合わせ内容を送信しました。 -->
            <h2 class="center">
                <s:text name="%{getText('lang.inquiry_end.sendok')}" />
            </h2>

            <ul style="list-style:none;">

                <!-- トップへ戻る： -->
                <li class="center">
                    <!--<s:form action="go-top-action">
                        <s:submit type="button" label=" %{getText('lang.inquiry_end.gotop')}"/>
                    </s:form> -->
                    <a href="main_top.jsp"><s:text name="%{getText('lang.inquiry_end.gotop')}" /></a>
                </li>
                 </ul>







        </article>


        </div>
        <div class = "push"></div>
                <!-- フッター -->
                <div id="footer">
                <c:import url="http://localhost:8080/openconnect/footer.jsp"/>
                </div>
    </body>
</html>