<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<!-- book section starts  -->

<section class="book" id="book">

	<h1 class="heading">
		<span>C</span> <span>h</span> <span>u</span> <span>y</span> <span>ế</span>
		<span>n</span> <span class="space"></span> <span>Đ</span> <span>i</span>


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
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>

		<div class="box">
			<img src="resources/img/ha_long.jpeg">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Vịnh Hạ Long
				</h3>
				<p>Đến Hạ Long, du khách sẽ được trải nghiệm nhiều dạng địa hình
					đa dạng khác nhau, nền ẩm thực phong phú, mang đến nhiều trải
					nghiệm lý thú cho du khách tham quan.</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>

				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>

		<div class="box">
			<img src="resources/img/da_nang.jpg">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Đà Nẵng
				</h3>
				<p>Thành Phố Đáng Sống Nhất Việt Nam, không chỉ bởi cảnh
					sắc, khí hậu, con người,.. mà đây còn là vùng đất hội tụ
					rất nhiều cảnh đẹp độc nhất và tinh hoa ẩm thực</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>

		<div class="box">
			<img src="resources/img/hoi_an.jpg">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Hội An
				</h3>
				<p>Hội An gây ấn tượng đặc biệt với sự bình yên của phố cổ, làng
					nghề, vẻ đẹp hoang sơ của biển cùng những món ngon đậm vị đáng nhớ</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>

				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>


		<div class="box">
			<img src="resources/img/nha_trang.jpg">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Nha Trang
				</h3>
				<p>Nơi có một trong 29 vịnh đẹp nhất thế giới và được thiên
					nhiên ưu ái ban tặng nhiều thắng cảnh, đặc sản độc đáo</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>

		<div class="box">
			<img src="resources/img/da_lat.jfif">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Đà Lạt
				</h3>
				<p>Đến Với Đà Lạt, chắc chắn ai cũng xuýt xoa trước vẻ đẹp thơ
					mộng của thành phố ngàn hoa này cùng với khí hậu mát mẻ quanh năm</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>

		<div class="box">
			<img src="resources/img/vung_tau.jpg">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Vũng Tàu
				</h3>
				<p>Không chỉ có những bãi biển đẹp, Vũng Tàu vẫn còn không ít
					các địa điểm du lịch, khu vui chơi – giải trí, và vô số các món
					ngon xứ biển</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>


		<div class="box">
			<img src="resources/img/dong_thap.png">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Đồng Tháp
				</h3>
				<p>Nổi tiếng với các cánh đồng lúa trù phú chạy dọc
					theo những con kênh hiền hòa cùng những cánh rừng nguyên sinh và hồ
					sen thơm ngát</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>

				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>

		<div class="box">
			<img src="resources/img/phu_quoc.jpg">
			<div class="content">
				<h3>
					<i class="fas fa-map-marker-alt"></i> Phú Quốc
				</h3>
				<p>Khám Phá Phú Quốc, Hòn Đảo Lớn Nhất Việt Nam Với Khí Hậu Ôn
					Hòa, những cánh rừng nguyên sinh cùng những bãi biển hoang sơ tươi
					đẹp</p>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<div></div>
				<a href="#" class="btn">Đặt ngay</a>
			</div>
		</div>


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
			<img src="resources/img/thay_loc.jpeg">
			<div class="content">
				<h3>Thầy Lộc Fuho</h3>
				<p>Cảm ơn Amazing Việt Nam đã giúp thầy có chuyến du lịch với
					học sinh rất tuyệt vời</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/thuan huan.jpg">
			<div class="content">
				<h3>Thấy Huấn GDCD</h3>
				<p>Xã hội này hông làm đòi đi du lịch thì chỉ có đi trên Amazing
					Việt Nam thế cho nó dễ nhá</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/thong_soi_ca.jpg">
			<div class="content">
				<h3>Thông Sói Ca</h3>
				<p>Nếu em thích lãng mạng hội Châu Âu thì em hãy đến với anh còn
					không hãy đến với Amazing Việt Nam</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/ceo_phuong_hang.jpg">
			<div class="content">
				<h3>CEO Phương Hằng</h3>
				<p>Tôi có Đại Nam nhưng tôi vân phải loay hoay tìm chỗ du lịch
					nhờ có Amazing Việt Nam giúp tôi đi chơi thoải mái hơn</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/ong_quyet.jpeg">
			<div class="content">
				<h3>Chủ Tịch Quyết FLC</h3>
				<p>Đi thật xa để trở về về đâu thì đã có Amazing Việt Nam Lo cảm
					ơn vì tất cả</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/kha_banh.webp">
			<div class="content">
				<h3>Doanh Nhân Khá Bảnh</h3>
				<p>Vậy đã mấy năm trôi qua nhờ có Amazing Việt Nam mà tôi có
					chuyên đi thật xa để trở về</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/domixi.webp">
			<div class="content">
				<h3>Độ MiXi</h3>
				<p>Hí Anh Em lâu quá chưa đi du lịch cảm ơn Amazing Việt Nam
					giúp tôi đi Đà Lạt rất vui</p>

			</div>
		</div>

		<div class="box">
			<img src="resources/img/thay_tien_day_hoa.jpg">
			<div class="content">
				<h3>Thầy Tiến Dạy Hóa</h3>
				<p>Nhặt được của rơi chắn chắn còn cái nịt nhưng đi du lịch chắc
					chắn được Amazing Việt Nam lo</p>

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


