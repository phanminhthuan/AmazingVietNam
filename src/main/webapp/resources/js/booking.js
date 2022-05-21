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
                        options += '<option value="' + models[i]['id'] + '">' + models[i]['name'] + ' '+ models[i]['roomType'] + '</option>';
                    }
                    
                    $("#room").html(options);
                }
            }
        });
    });
	//xuất thông tin phòng
    $("#room").change(function () {
    	const value = $(this).val();
    	if(value === "") {
    		return;
    	}
    	
        $.ajax({
            url: '/booking-get-room?roomId=' + value,
            type: "GET",
            success: function (response) {
                if (response) {
                    var model = response;
					$("img[name='img_room']").attr("src", model.imageUrl);
					$("span[class='price']").html(formatterPrice(model.price));
					$("span[class='price']").attr("value", model.price);
					$("span[class='type']").html(model.roomType);
					
					getTotalPrice();
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
                if (response != "fail") {
                    window.location = "/booking-success?bookRoomId=" + response; 
                }
                else {
                	alert("Phòng đã có người đặt");
                }	
            }
        });
    });
    
    $("input[name='check_in_date']").change(function (e) {
    	getTotalPrice();
    });
    
    $("input[name='check_out_date']").change(function (e) {
    	getTotalPrice();
    });
    
    function getTotalPrice(){
    	var total = 0;
    	var checkInDate = $("input[name='check_in_date']").val();
		var	checkOutDate = $("input[name='check_out_date']").val();
		var price = $("span[class='price']").attr("value");
		
		if(checkInDate == ""){
			$("span[class='total']").html(formatterPrice(total));
			return;
		}
		
		if(checkOutDate == ""){
			$("span[class='total']").html(formatterPrice(total));
			return;
		}
		var checkIn = new Date(checkInDate);
		var checkOut = new Date(checkOutDate);
		var diffTime = Math.abs(checkOut - checkIn);
		var diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
		total = diffDays * parseInt(price);
		$("span[class='total']").html(formatterPrice(total));
		return total;
    }
    
    function formatterPrice(price){
    	var formatter = new Intl.NumberFormat('vi-VN', {
			  style: 'currency',
			  currency: 'VND',
			});
    	return formatter.format(price);
    }
});



