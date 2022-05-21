<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="common/header.jspf"%>
<script src="resources/js/booking.js"></script>
<!-- book section starts  -->

<section class="book" id="book">


	<h1 class="heading booking">
		<span>Đ</span> 
		<span>ặ</span> 
		<span>t</span> 
		<span class="space"></span> 
		<span>P</span> 
		<span>h</span>
		<span>ò</span> 
		<span>n</span>
		<span>g</span> 
	</h1>

	<div class="row">

		<div class="image">
			<img src="resources/img/anh_1.jpg">
		</div>

		
		<form action="#">
			<div class="inputBox">
				<h3>Nơi đến</h3>
				<select name="location_id" id="location">
					<option value="0"> Chọn địa điểm bạn muốn đến</option>
					<c:forEach var="location" items="${locations}">
						<option value="${location.getId()}" 
							${location.getId() == hotel.getLocationId() ? "selected" : ""}>
							${location.getName()}
						</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Khách Sạn</h3>
				<select id="hotel" name="hotel_id">
					<option value="0"> Chọn khách sạn</option>
					<c:forEach var="hotelItem" items="${hotels}">
						<option value="${hotelItem.getId()}" 
							${hotelItem.getId() == hotel.getId() ? "selected" : ""}>
							${hotelItem.getName()}
						</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Số phòng</h3>
				<select id="room" name="room_id">
					<option value="0"> Chọn phòng</option>
					<c:forEach var="room" items="${rooms}">
						<option value="${room.getId()}">
							${room.getName()} ${room.getRoomType()}
						</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Số người</h3>
				<input type="number" min="1" placeholder="Chọn số người chuyến đi" name="amount_people">
			</div>
			<div class="inputBox">
				<h3>Ngày đặt phòng</h3>
				<input type="date" name="check_in_date">
			</div>
			<div class="inputBox">
				<h3>Ngày trả phòng</h3>
				<input type="date" name="check_out_date">
			</div>
			<div class="inputBox">
				<h3>Họ Và Tên</h3>
				<input type="text" placeholder="Nhập họ & tên" name="full_name">
			</div>
			<div class="inputBox">
				<h3>Số điện thoại</h3>
				<input type="tel" maxlength="10" placeholder="Nhập số điện thoại" name="phone_number">
			</div>
			<div class="image-room">	
				<img name="img_room" style="width: 100%">
			</div>
			<div class="price-room" style="font-size: 20px">	
				Giá: <span class="price" ></span> 
			</div>
			<div class="room-type" style="font-size: 20px">	
				Loại phòng: <span class="type" ></span> 
			</div>
			<div class="total-price" style="font-size: 20px">	
				Tổng tiền: <span class="total" ></span> 
			</div>
			<input type="button" class="btn" value="Đặt Phòng">
			
			
			<div id="message" style="font-size: 16px; color: red; margin-top: 20px;"></div>
		</form>
	</div>

</section>
<!--  -->

	<!-- book section ends -->
<%@ include file="common/footer.jspf"%>