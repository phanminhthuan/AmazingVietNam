<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jspf"%>

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

		<form action="">
			<div class="inputBox">
				<h3>Nơi đến</h3>
				<select>
					<option value="" disabled selected> Chọn địa điểm bạn muốn đến</option>
					<option value="sapa">Sapa</option>
					<option value="vinhhalong">Vịnh Hạ Long</option>
					<option value="danang">Đà Nẵng</option>
					<option value="hoian">Hội An</option>
					<option value="nhatrang">Nha Trang</option>
					<option value="dalat">Đà Lạt</option>
					<option value="vungtau">Vũng Tàu</option>
					<option value="dongthap">Đồng Tháp</option>
					<option value="phuquoc">Phú Quốc</option>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Khách Sạn</h3>
				<select>
					<option value="" disabled selected> Chọn khách sạn</option>
					<option value="1">Đức Minh</option>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Số phòng</h3>
				<select>
					<option value="" disabled selected> Chọn phòng</option>
					<option value="109">109</option>
					<option value="110">110</option>
					<option value="111">111</option>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Số người</h3>
				<input type="number" min="0" placeholder="Chọn số người chuyến đi">
			</div>
			<div class="inputBox">
				<h3>Ngày đi</h3>
				<input type="date">
			</div>
			<div class="inputBox">
				<h3>Ngày về</h3>
				<input type="date">
			</div>
			<input type="submit" class="btn" value="Tìm Kiếm">
		</form>
	</div>

</section>

<!-- book section ends -->
<%@ include file="common/footer.jspf"%>