<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판</title>
<style>
.form-group {
	margin: px;
}

input[type=text], input[type=password], input[type=email] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-examlpe-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="viewusers.jsp">조회</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding: 80px; background-color: #58e2e2;">

				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="userID" maclength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maclength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="userName" maclength="20">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active"> <input
								type="radio" name="userGender" autocomplete="off" value="Male"
								checked>남자
							</label> <label class="btn btn-primary"> <input type="radio"
								name="userGender" autocomplete="off" value="Female" checked>여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일"
							name="userEmail" maclength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="회원가입">
				</form>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
</body>
</html>