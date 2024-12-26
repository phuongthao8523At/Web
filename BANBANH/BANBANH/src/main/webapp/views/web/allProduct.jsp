<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
</head>
<body>
<div class="content">
    <div class="content__container">
        <div class="main">
            <div class="homepage">
            </div>
        </div>

        <!-- ------------------------------------------All Product----------------------------------- -->
        <div class="list_product">
            <div class="list_product-info">
                <div class="list_product-info-title">
                    <span>TẤT CẢ SẢN PHẨM </span>
                    <p>Xếp theo: Nổi bật</p>
                </div>
                <div class="list_product-info-group">
                    <div class="list_product-info-list">
                        <c:forEach var="item" items="${products}">
                            <a
                                    href='<c:url value="/product-detail?productId=${item.productId}"></c:url>'
                                    class="list_product-info-item"> <img
                                    src='<c:url value="${item.imageId.imageSmall}"/>'
                                    style="width: 215px; height: 215px; object-fit: contain;"
                                    alt="Hinh">
                                <div class="list_product-info-inf">
                                    <p class="list_product-info-item-name">${item.productName}</p>
                                    <p class="list_product-info-item-price"><c:set var="p" value="${item.price}"/>
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/></p>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value='/template/web/js/product.js'/>"></script>
</body>
</html>