<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/header.jspf"%>

<section class="packages" id="search">
	<div style="margin-top: 100px">
		<ul>
			<c:forEach var="hotel" items="${hotels}">
				<li class="flex-container" style="width: 100%">
					<div class="image">	
						<img alt="" src="${hotel.getImageUrl()}">
					</div>
					<div class="content-hotel">
						<h1>${hotel.getName()}</h1>
						<h3>Địa Chỉ: ${hotel.getAddress()}</h3>
						<h3>Sđt: ${hotel.getPhoneNumber()}</h3>
						<h3>Email: ${hotel.getEmail()}</h3>
						<h3>Địa Điểm: ${hotel.getLocation().getName()}</h3>
						<a href="/booking?hotelId=${hotel.getId()}" class="btn">Đặt ngay</a>
					</div> 
				</li>
				<hr style="border-top: 1px solid #ddd; margin: 10px 0px;" />
			</c:forEach>
		</ul>
	</div>
</section>
<style>
	.flex-container {
  		display: flex;
	}
	#search .image img{
		width: 300px;
		padding-right: 20px;
	}
	#search h1{
		font-size: 30px;
	}
	#search h3{
		font-size: 15px;
	}
	
</style>


<%@ include file="common/footer.jspf"%>


