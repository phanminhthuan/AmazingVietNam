<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
							${room.getName()}
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
				<input type="text" placeholder="Nhập họ & tên" name="customer_name">
			</div>
			<div class="inputBox">
				<h3>Số điện thoại</h3>
				<input type="tel" maxlength="10" placeholder="Nhập số điện thoại" name="phone_number">
			</div>
			<input type="button" class="btn" value="Đặt Phòng">
			
			
			<div id="message" style="font-size: 16px; color: red; margin-top: 20px;"></div>
		</form>
	</div>

</section>
<!--  -->
<script type="text/javascript">
//tự động chọn phòng
$(function () {
	var optionsRoom = '<option value="0" selected> Chọn phòng</option>';
	
    $("#location").change(function () {
    	const value = $(this).val();
    	$("#room").html(optionsRoom);
    	var options = '<option value="0" selected> Chọn khách sạn</option>';
    	if(value === "") {
    		$("#hotel").html(options);
    		return;
    	}
    	
        $.ajax({
            url: '/booking-get-hotels?locationId=' + value,
            type: "GET",
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
    
    $(".btn").click(function (e) {
    	$("#message").html("");
    	
    	if($("select[name='location_id']").val() == null || $("select[name='location_id']").val() == "0"){
    		$("#message").html("Vui lòng chọn địa điểm");
    		$("select[name='location_id']").focus();
			return;
		}
    	
		if($("select[name='hotel_id']").val() == null || $("select[name='hotel_id']").val() == "0"){
			$("#message").html("Vui lòng chọn khách sạn");
			$("select[name='hotel_id']").focus();
			return;
		}
		
		if($("select[name='room_id']").val() == null || $("select[name='room_id']").val() == "0"){
			$("#message").html("Vui lòng chọn phòng");
			$("select[name='room_id']").focus();
			return;
		}
		
		if(!$("input[name='amount_people']").val()){
			$("#message").html("Vui lòng nhập số người");
			$("input[name='amount_people']").focus();
			return;
		}
		
		if($("input[name='check_in_date']").val() == ""){
			$("#message").html("Vui lòng chọn ngày đặt phòng");
			$("input[name='check_in_date']").focus();
			return;
		}
		
		if($("input[name='check_out_date']").val() == ""){
			$("#message").html("Vui lòng chọn ngày trả phòng");
			$("input[name='check_out_date']").focus();
			return;
		}
		
		if($("input[name='full_name']").val() == ""){
			$("#message").html("Vui lòng nhập họ và tên");
			$("input[name='full_name']").focus();
			return;
		}
		
		if($("input[name='phone_number']").val() == ""){
			$("#message").html("Vui lòng nhập số điện thoại");
			$("input[name='phone_number']").focus();
			return;
		}
		
        $.ajax({
            url: '/booking-save',
            type: "POST",
            contentType:"application/json",
            data: JSON.stringify({
				"room_id": $("select[name='room_id']").val(),
				"user_id": 1,
				"hotel_id": $("select[name='hotel_id']").val(),
				"amount_people": $("input[name='amount_people']").val(),
				"check_in_date": $("input[name='check_in_date']").val(),
				"check_out_date": $("input[name='check_out_date']").val(),
				"full_name": $("input[name='full_name']").val(),
				"phone_number": $("input[name='phone_number']").val(),
            }),
            
            success: function (response) {
                if (response == "success") {
                    window.location = "/booking-info"; 
                }
                else {
                	alert("Phòng đã có người đặt");
                }	
            }
        });
    });

});



</script>
	<!-- book section ends -->
<%@ include file="common/footer.jspf"%>