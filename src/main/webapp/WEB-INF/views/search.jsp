<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/header.jspf"%>

<!-- home section starts  -->

<section class="home" id="home">

	<div class="content">
		<h3>Amazing Việt Nam</h3>
		<p>Cũng Khám Phá Đất Nước Việt Nam Xinh Đẹp</p>

	</div>

	<div class="video-container">
		<video src="resources/video/Hoi_An.mp4" id="video-slider" loop
			autoplay muted></video>
	</div>

</section>

<!-- home section ends -->


<!-- packages section starts  -->

<section class="packages" id="packages">

	<h1 class="heading">
		<span>Đ</span> 
		<span>i</span> 
		<span>ể</span> 
		<span>m</span> 
		<span
			class="space">
		</span> 
		<span>Đ</span> 
		<span>ế</span> 
		<span>n</span> 
		<span
			class="space">
		</span> 
		<span>Y</span> 
		<span>ê</span> 
		<span>u</span> 
		<span
			class="space">
		</span>
		<span>T</span>
		<span>h</span>
		<span>í</span>
		<span>c</span>
		<span>h</span>
	</h1>

	<div class="box-container">
		<c:forEach var="bookRoom" items="${bookRooms}">
			<div class="box">
				<img src="resources/img/sapa.jpg">
				<div class="content">
					<h3>
						<i class="fas fa-map-marker-alt"></i> Sapa
					</h3>
					<p>Sapa nằm ở Tây Bắc Việt Nam, nơi nổi tiếng với những ruộng
						bậc thang nối tiếp nhau, trải dài như chạm đến chân trời cùng đỉnh
						Fansipan - nóc nhà Đông Dương</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="far fa-star"></i>
	
					</div>
					<div></div>
					<a href="/booking" class="btn">Đặt ngay</a>
				</div>
			</div>
		</c:forEach>
	</div>




</section>

<!-- packages section ends -->

<!-- services section starts  -->

<section class="services" id="services">

	<h1 class="heading">
		<span>T</span> <span>i</span> <span>ệ</span> <span>n</span> <span
			class="space"></span> <span>í</span> <span>c</span> <span>h</span> <span
			class="space"></span> <span>D</span> <span>ị</span> <span>c</span> <span>h</span>
		<span class="space"></span> <span>V</span> <span>ụ</span>

	</h1>

	<div class="box-container">

		<div class="box">
			<i class="fas fa-hotel"></i>
			<h3>Khách Sạn</h3>
			<p>Amazing Việt Nam nơi cung cấp cho bạn dịch vụ nghĩ dưỡng chất
				lượng nơi cao mọi sự yêu thương sẽ được gửi gắm thay bạn</p>
		</div>
		<div class="box">
			<i class="fas fa-utensils"></i>
			<h3>Ẩm Thực Và Thức Uống</h3>
			<p>Amazing Việt Nam cung cấp cho bạn nền ẩm thực đậm đà bản sắc
				dân tộc Việt Nam</p>
		</div>
		<div class="box">
			<i class="fas fa-bullhorn"></i>
			<h3>Hướng Dẫn Du Lịch An Toàn</h3>
			<p>Amazing Việt Nam cam kết khử khuẩn mọi trang thiết bị công
				cộng đảm bảo phòng chống dịch Covid-19 và thực hiện đầy đủ khuyến
				cáo của bộ y tế</p>
		</div>
		<div class="box">
			<i class="fas fa-globe-asia"></i>
			<h3>Cùng Amazing Việt Nam Vươn Cao Ra Thế Giới</h3>
			<p>Mang sứ mệnh cả dân tộc Amazing Việt Nam mong muốn phát triển
				du lịch Việt Nam ra khắp thế giới</p>
		</div>
		<div class="box">
			<i class="fas fa-plane"></i>
			<h3>Không Chỉ Là Chuyến Đi</h3>
			<p>Amazing Việt Nam Thấu hiểu sự vất vả của bạn trong công việc
				nên được phục vụ trong những chuyến du lịch là sự vui mừng của chúng
				tối</p>
		</div>
		<div class="box">
			<i class="fas fa-hiking"></i>
			<h3>Đồng Hành Bạn Trên Mọi Chuyến Đi</h3>
			<p>Chúng tôi sẽ không ngừng mang đến những trải nghiệm tuyệt vợi
				trên những đánh giá của bạn</p>
		</div>

	</div>

</section>

<!-- services section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

	<h1 class="heading">
		<span>B</span> <span>à</span> <span>i</span> <span class="space"></span>
		<span>V</span> <span>i</span> <span>ế</span> <span>t</span> <span
			class="space"></span> <span>N</span> <span>ổ</span> <span>i</span> <span
			class="space"></span> <span>B</span> <span>ậ</span> <span>t</span>


	</h1>

	<div class="box-container">

		<div class="box">
			<img src="resources/img/viet_nam1.jpg">
			<div class="content">
				<h3>Vẻ đẹp của Việt Nam</h3>
				<p>Có một câu chuyện về những con người, đã dành ra nhiều năm để trải nghiệm nhiều vùng đất khác nhau trên khắp mọi miền Tổ Quốc. 
				Họ đi qua những vùng đất cực Bắc, cực Nam, lên rừng rồi lại xuống biển, ghi lại những khoảnh khắc tuyệt đẹp của thiên nhiên...</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/lang_mac.jpg">
			<div class="content">
				<h3>Những Ngôi Làng Đẹp Như Cổ Tích Việt Nam</h3>
				<p>Trong mắt nhiều bạn bè quốc tế, nhắc đến Việt Nam, nhiều du khách vẫn miêu tả đất nước cong cong
				hình chữ S này gắn liền với hình ảnh cây đa, bến nước, mái đình,...</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/dna.jpg">
			<div class="content">
				<h3>Du lịch Đông Nam Á</h3>
				<p>Đông Nam Á được biết đến là một điểm du lịch được du khách bốn phương yêu mến và ưu tiên lựa chọn làm điểm đến trong chuyến đi 
				của mình. Nhưng đâu là lý do khiến Đông Nam Á trở thành một điểm đến “vạn người mê” như vậy?</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/am_thuc_vn.jpg">
			<div class="content">
				<h3>Việt Nam Lọt Top 10 Nền Ẩm Thực Tuyệt Nhất</h3>
				<p>Bên cạnh những địa danh du lịch hấp dẫn, Việt Nam còn hấp dẫn du khách bởi những món ăn độc đáo, 
				quyến rũ với mọi giác quan. Từng nằm trong rất nhiều bảng xếp hạng các nền ẩm thực </p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/khach_san.jpg">
			<div class="content">
				<h3>Top 5 khách sạn tốt tại Việt Nam</h3>
				<p>Để có một chuyến công tác tốt và thoải mái thì việc lưu trú tại một khách sạn có những dịch vụ chuyên 
				nghiệp, tiện nghi và thuận lợi cũng vô cùng quan trọng. Nhằm đáp ứng các nhu cầu và dịch vụ... </p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/cho_ben_thanh.jpg">
			<div class="content">
				<h3>Ba Ngôi Chợ Đặc Sắc Nhất Việt Nam</h3>
				<p>Những ngôi chợ với những đặc trưng ở Việt Nam, là biểu tượng cho ba miền Nam Trung Bắc với những đặc 
				sản và cá tính của mỗi miền đất nước.</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/hoa_sen.jpg">
			<div class="content">
				<h3>Nét đẹp Việt Nam qua những Hồ Sen</h3>
				<p>Nếu Nhật Bản có quốc hoa là hoa anh đào, Hà Lan có hoa tulip, Ấn Độ có sen trắng thì Việt Nam ta lại chọn 
				lựa đóa sen hồng làm quốc hoa của dân tộc. Du lịch Việt Nam, dọc theo mảnh đất hình chữ S này du khách có thể 
				bắt gặp những hồ sen hồng khác nhau.</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/nguoi_viet.jpg">
			<div class="content">
				<h3>Chân Dung Người Việt Qua Các Chuyến Du Lịch Của Nhiếp Ảnh Gia Pháp</h3>
				<p>Du lịch là cầu nối giúp chúng ta cảm nhận cuộc sống và con người ở các vùng miền khác nhau. Réhahn, nhà nhiếp 
				ảnh gia người Pháp, sau 7 năm du lịch và sống tại Việt Nam, ông đã chụp hơn 40,000 bức ảnh, tái hiện một cách sống 
				động nét đôn hậu, chân chất của người dân Việt Nam.</p>

			</div>
		</div>
</section>

<!-- gallery section ends -->

<!-- review section starts  -->



<!-- Hết đánh giá review -->
<!-- review section starts  -->

<section class="review" id="review">

	<h1 class="heading">
		<span>B</span> <span>à</span> <span>i</span> <span class="space"></span>
		<span>V</span> <span>i</span> <span>ế</span> <span>t</span> <span
			class="space"></span> <span>Đ</span> <span>á</span> <span>n</span> <span>h</span>
		<span class="space"></span> <span>G</span> <span>i</span> <span>á</span>
	</h1>

	<div class="swiper-container review-slider">

		<div class="swiper-wrapper">

			<div class="swiper-slide">
				<div class="box">
					<img src="resources/img/son_tung.webp">
					<h3>Anh Tùng</h3>
					<p>Lần đầu tiên tôi đi du lịch thật sự rất khó khăn vì rất
						nhiều thứ mới mẻ nhờ có Amazing Việt Nam đã giúp tôi có chuyến đi
						thú vị</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="far fa-star"></i>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="box">
					<img src="resources/img/hue.jfif">
					<h3>Thùy Trâm</h3>
					<p>Tôi rất thích đi du lịch nhưng không biết đi đâu nhờ có
						Amazing Việt Nam đã giúp tôi có chuyến du lịch huế tuyêt vời</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="far fa-star"></i>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="box">
					<img src="resources/img/thuan.jpg">
					<h3>Anh Thuận Coder</h3>
					<p>Từ nhỏ tôi không biết du lịch nhưng từ khi được biết Amazing
						Việt Nam đã có những chuyến đi rất vui</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="far fa-star"></i>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="box">
					<img src="resources/img/anh_ly.jpg">
					<h3>
						Anh Lý Fix Bug
						<h3>
							<p>Từ ngày ra trường chưa khi nào được đi du lịch nhờ có
								Amazing mà tui biết nhiều nơi để đi hơn</p>
							<div class="stars">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="far fa-star"></i>
							</div>
				</div>
			</div>

		</div>

	</div>

</section>

<!-- review section ends -->

<%@ include file="common/footer.jspf"%>


