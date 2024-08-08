<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Register Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/my-login.css' />">
</head>
<body class="my-login-page">
<section class="h-100">
	<div class="container h-100">
		<div class="row justify-content-md-center h-100">
			<div class="card-wrapper">
				<div class="brand">
					<img src="" alt="Register">
				</div>
				<div class="card fat">
					<div class="card-body">
						<h4 class="card-title">회원가입</h4>
						<form action="${pageContext.request.contextPath}/register" modelAttribute="user" method="POST" class="my-login-validation" novalidate="">
							<c:if test="${not empty errorMessage}">
								<div class="alert alert-danger" role="alert">
									<p>${errorMessage}</p>
								</div>
							</c:if>
							<div class="form-group">
								<label for="name">이름</label>
								<input id="name" type="text" class="form-control" name="username" required autofocus>
								<div class="invalid-feedback">
									이름을 입력해주세요.
								</div>
							</div>

							<div class="form-group">
								<label for="email">이메일</label>
								<input id="email" type="email" class="form-control" name="email" required>
								<div class="invalid-feedback">
									올바른 이메일이 아닙니다.
								</div>
							</div>

							<div class="form-group">
								<label for="password">비밀번호</label>
								<input id="password" type="password" class="form-control" name="password" required data-eye>
								<div class="invalid-feedback">
									패스워드를 입력해주세요.
								</div>
							</div>

							<div class="form-group">
								<div class="custom-checkbox custom-control">
									<input type="checkbox" name="agree" id="agree" class="custom-control-input" required="">
									<label for="agree" class="custom-control-label">나는 <a href="#">약관</a>에 동의합니다</label>
									<div class="invalid-feedback">
										귀하는 당사의 약관에 동의해야 합니다
									</div>
								</div>
							</div>

							<div class="form-group m-0">
								<button type="submit" class="btn btn-primary btn-block">
									가입
								</button>
							</div>
							<div class="mt-4 text-center">
								이미 계정이 있으신가요? <a href="loginPage">로그인</a>
							</div>
						</form>
						<c:if test="${param.success}">
							<p>회원가입에 성공했습니다!</p>
						</c:if>
					</div>
					<div class="footer">
						footer
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="<c:url value='/resources/js/my-login.js' />"></script>
</body>
</html>