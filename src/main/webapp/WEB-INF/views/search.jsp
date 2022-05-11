<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/header.jspf"%>

<section class="packages" id="search">
	<div style="margin-top: 100px">
		<ul>
			<c:forEach var="hotel" items="${hotels}">
				<li style="margin-bottom:20px; width: 100%">
					<h1>
						${hotel.getName()}
					</h1>
					<h3>
						Địa Chỉ: ${hotel.getAddress()}
					</h3>
					<h3>
						Sđt: ${hotel.getPhoneNumber()}
					</h3>
					<h3>
						Email: ${hotel.getEmail()}
					</h3>
					<h3>
						Địa Điểm: ${hotel.getLocation().getName()}
					</h3>
					<a href="/booking?hotelId=${hotel.getId()}" class="btn">Đặt ngay</a>
					
					<hr style="border-top: 1px solid #ddd; margin-top: 10px;" />
				</li>
			</c:forEach>
		</ul>
	</div>
</section>



<%@ include file="common/footer.jspf"%>


