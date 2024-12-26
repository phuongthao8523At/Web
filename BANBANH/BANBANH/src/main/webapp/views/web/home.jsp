<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Phone Store</title>
</head>
<body>
<!-- ------------------------------------------------------------------------------------Body-->
<div class="content">
    <div class="content__container">
        <div class="main">
            <div class="homepage">
                <div class="homepage-image">
                    <div class="homepage-left">
                        <i class="fas fa-chevron-left homepage-left-icon-back"></i> <a
                            href="" class="homepage-left-item"> <img
                            src="bánh%20sn.jpg"
                            alt="" class="homepage-left-img">
                    </a> <i class="fas fa-chevron-right homepage-left-icon-next"></i>
                    </div>
                    <div class="homepage-right">
                        <a href="#" class="homepage-right-item"> <img
                                src="Screenshot 2024-06-10 161814.png"
                                alt="">
                        </a> <a href="#" class="homepage-right-item"> <img
                            src="Screenshot 2024-06-10 161750.png"
                            alt="">
                    </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- ------------------------------------------Sale----------------------------------- -->
        <div class="list_product">
            <div class="list_product-info sale-background">
                <div class="list_product-info-title sale-background-title">
                    <img
                            src="hinh-anh-banh-sinh-nhat-dep-yody-vn1.jpg"
                            alt="">
                </div>
                <div class="list_product-info-group ">
                    <div class="list_product-info-list sale-background-list ">

                    </div>
                </div>
            </div>
        </div>
        <!-- ------------------------------------------Top_Sell_Phone----------------------------------- -->
        <div class="list_product">
            <div class="list_product-info">
                <div class="list_product-info-title">

                </div>
                <div class="list_product-info-group">
                    <div class="list_product-info-list">
                        <c:forEach var="item" items="${listProduct}">
                            <a
                                    href='<c:url value="/product-detail?productId=${item.productId}"></c:url>'
                                    class="list_product-info-item">
                                <img style="width: 215px; height: 215px; object-fit: contain;" src='<c:url value="${item.imageId.imageSmall}"/>' alt="Hinh">
                                <p class="list_product-info-item-name">${item.productName}</p>

                                <p class="list_product-info-item-price">
                                    <c:set var="p" value="${item.price}"/>
                                    <fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                </p>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!--------------------------------------------Top_New_info----------------------------------- -->


    </div>
</div>
<script src="<c:url value='/template/web/js/cataloghome.js'/>"></script>
</body>
</html>