<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>
	<div class="content single__product-container">
		<div class="content__container  ">
			<div class="single__product-wrapper">
				<div class="single__product-name">
					<p>${product.productName}</p>
				</div>
				<div class="single__product-infor">
					<div class="single__product-infor-left">
						<div class="single__product-infor-img">
							<img src='<c:url value="${product.imageId.imageBig}"/>' alt="hinh">
						</div>
					</div>
					<div class="single__product-infor-right">
						<div class="single__product-infor-price">
                                                    <c:set var="p" value="${product.price}"/>
						    <fmt:setLocale value="vi_VN"/>
						    <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                                </div>

						<div class="single__product-infor-boxpromo">
							<div class="title">Sản phẩm đính kèm:</div>
							<ul class="single__product-infor-boxpromo-list">
								<li><i class="fas fa-check"></i> <span>Tặng mũ, nến sinh nhật</span></li>

							</ul>
						</div>
						<div class="single__product-infor-btn">
								<form id="formAddToCart" action="<c:url value='/cart'></c:url>" method="post">
									<input type="hidden" name="productId" value="${product.productId}">
									<input type="hidden" name="quantity" value= "1">
									<button type="submit">
										<i class="fas fa-cart-arrow-down"></i>
										<p>Thêm vào giỏ hàng</p>
									</button>
								</form>
						</div>

					</div>
				</div>
			</div>

			<div class="single__product-content">
				<div class="single__product-content-left">
					<div class="single__product-content-detail">
						<div class="text-detail">
							<div class="text-detail-title">
								<h3>Thông tin sản phẩm :</h3>
								<span>${product.productName}</span>
							</div>
							<p>${product.description}</p>
						</div>
					</div>
				</div>

				</div>
			</div>
		</div>
	</div>
	<script src="<c:url value='/template/web/js/product-detail.js'/>"></script>
</body>
</html>