<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/header.jspf"%>

<!-- book section starts  -->

<style>
.container {
	max-width: 85%;
	margin: auto;
	min-height: 250px;
}

h2 {
	margin-top: 100px;
	font-size: 24px;
}

table {
	margin-top: 10px;
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 20px;
}

th {
	background: #00bfff;
	color: #fff;
}

td, th {
	border: 1px solid #000;
	text-align: left;
	padding: 6px;
	font-size: 14px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>

<body>
	<div class="container">
		<h2>Thông Tin Đặt Phòng</h2>

		<table style="width: 100%">
			<tr>
				<th></th>
				<th>Địa Điểm</th>
				<th>Khách Sạn</th>
				<th>Số Phòng</th>
				<th>Loại Phòng</th>
				<th>Số Người</th>
				<th>Ngày Đi</th>
				<th>Ngày Về</th>
				<th>Đơn Giá</th>
				<th>Số Ngày</th>
				<th>Thành Tiền</th>
				<th>Xóa</th>
			</tr>

			<c:forEach var="bookRoom" items="${bookRooms}">
				<tr>
					<td>${bookRoom.id}</td>
					<td>${bookRoom.getHotel().getLocationId()}</td>
					<td>${bookRoom.getHotel().getName()}</td>
					<td>${bookRoom.getRoom().getName()}</td>
					<td>${bookRoom.getRoom().getRoomType()}</td>
					<td>${bookRoom.amountPeople}</td>
					<td>${bookRoom.getFormatDate(bookRoom.checkInDate)}</td>
					<td>${bookRoom.getFormatDate(bookRoom.checkOutDate)}</td>
					<td>${bookRoom.getRoom().getPriceFormat(bookRoom.getRoom().getPrice())} VNĐ</td>
					<td>${bookRoom.getNumberDays()}</td>
					<td>${bookRoom.getRoom().getPriceFormat(bookRoom.getNumberDays() * bookRoom.getRoom().getPrice())} VNĐ</td>
					<td><a href="/booking-info-delete?id=${bookRoom.id}">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>





<!-- book section ends -->
<%@ include file="common/footer.jspf"%>