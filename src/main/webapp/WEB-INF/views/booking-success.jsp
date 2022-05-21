<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf"%>

<!-- book section starts  -->

<section class="book" id="bookingSuccess">


	<h1 class="heading booking-success">
		<span>Đ</span> 
		<span>ặ</span> 
		<span>t</span> 
		<span class="space"></span> 
		<span>P</span> 
		<span>h</span>
		<span>ò</span> 
		<span>n</span>
		<span>g</span> 
		<span class="space"></span> 
		<span>T</span>
		<span>h</span>
		<span>à</span>
		<span>n</span>
		<span>h</span>
		<span class="space"></span>
		<span>C</span>
		<span>ô</span>
		<span>n</span>
		<span>g</span>

	</h1>
	<div class="flex-container" style="width: 100%">
		<div class="image">	
			<img alt="" src="${bookRoom.getRoom().getImageUrl()}">
		</div>
				<div class="details">
				<div>Địa Điểm: ${bookRoom.getHotel().getLocation().getName()}</div>
				<div>Khách Sạn: ${bookRoom.getHotel().getName()}</div>
				<div>Số Phòng: ${bookRoom.getRoom().getName()}</div>
				<div>Loại Phòng: ${bookRoom.getRoom().getRoomType()}</div>
				<div>Họ Tên: ${bookRoom.getUser().getFullName()}</div>
				<div>Số Điện Thoại: ${bookRoom.getUser().getPhoneNumber()}</div>
				<div>Số Người: ${bookRoom.amountPeople}</div>
				<div>Ngày Đặt: ${bookRoom.getFormatDate(bookRoom.checkInDate)}</div>
				<div>Ngày Trả: ${bookRoom.getFormatDate(bookRoom.checkOutDate)}</div>
				<div>Đơn giá: ${bookRoom.getRoom().getPriceFormat(bookRoom.getRoom().getPrice())} đ</div>
				<div>Số ngày: ${bookRoom.getNumberDays()}</div>
				<div>Thành tiền: ${bookRoom.getRoom().getPriceFormat(bookRoom.getNumberDays() * bookRoom.getRoom().getPrice())} đ</div>
			</div>
	</div>

<style>
	.flex-container {
  		display: flex;
	}
	#bookingSuccess .image img{
		width: 500px;
		padding-right: 20px;
	}
	#bookingSuccess .details div{
		font-size: 18px;
	}
</style>
</section>

	<!-- book section ends -->
<%@ include file="common/footer.jspf"%>