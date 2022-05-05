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
				<select id="location">
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
				<select id="hotel">
					<option value="" disabled selected> Chọn khách sạn</option>
				</select>
			</div>
			
			<div class="inputBox">
				<h3>Số phòng</h3>
				<select id="room">
					<option value="" disabled selected> Chọn phòng</option>
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
			<input type="submit" class="btn" value="Đặt Phòng">
		</form>
	</div>

</section>

<script type="text/javascript">
$(function () {
	var optionsRoom = '<option value="" disabled selected> Chọn phòng</option>';
	
    $("#location").change(function () {
    	const value = $(this).val();
    	$("#room").html(optionsRoom);
    	var options = '<option value="" disabled selected> Chọn khách sạn</option>';
    	if(value === "") {
    		$("#hotel").html(options);
    		return;
    	}
    	
        $.ajax({
            url: '/booking-get-hotels?location=' + value,
            type: "GET",
            async: false,
            success: function (response) {
                if (response) {
                    var models = response;
                    
                    for (var i in models) {
                        options += '<option value="' + models[i]['id'] + '">' + models[i]['name'] + '</option>';
                    }

                    $("#hotel").html(options);
                }
            }
        });
    });

    $("#hotel").change(function () {
    	const value = $(this).val();
    	var options = optionsRoom;
    	
    	if(value === "") {
    		$("#room").html(options);
    		return;
    	}
    	
        $.ajax({
            url: '/booking-get-rooms?hotelId=' + value,
            type: "GET",
            async: false,
            success: function (response) {
                if (response) {
                    var models = response;
                    
                    for (var i in models) {
                        options += '<option value="' + models[i]['id'] + '">' + models[i]['name'] + '</option>';
                    }
                    
                    $("#room").html(options);
                }
            }
        });
    });

});

</script>
	<!-- book section ends -->
<%@ include file="common/footer.jspf"%>