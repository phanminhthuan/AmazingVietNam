<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="common/header.jspf"%>

	<!-- login form container  -->

	<div class="login-form-container">

		<form action="" method="post">
			<h3>Login</h3>
			<input type="account" class="box" placeholder="Nhập email của bạn">
			<input type="password" class="box" placeholder="Nhập mật khẩu">
			<input type="submit" value="Đăng Nhập" class="btn"> <input
				type="checkbox" id="remember"> 
				<label for="remember">Nhớ tài khoản</label>
			<p>
				<a href="#">Quên mật khẩu</a>
			</p>
			<p>
				<a href="#">Đăng ký tài khoản</a>
			</p>
		</form>

	</div>

<%@ include file="common/footer.jspf"%>


