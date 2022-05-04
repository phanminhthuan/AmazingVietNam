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
				<input type="text" placeholder="Nhập địa điểm muốn đi">
			</div>
			<div class="inputBox">
				<h3>Số người</h3>
				<input type="number" placeholder="Chọn số người chuyến đi">
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