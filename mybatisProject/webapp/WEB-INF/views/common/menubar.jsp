<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<style>
				@font-face {
					font-family: 'HakgyoansimDunggeunmisoTTF-B';
					src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-5@1.0/HakgyoansimDunggeunmisoTTF-B.woff2') format('woff2');
					font-weight: 700;
					font-style: normal;
				}

				body * {
					font-family: 'HakgyoansimDunggeunmisoTTF-B';
				}

				.login-area a {
					text-decoration: none;
					color: #333;
					font-size: 13px;
					transition: .3s;

					&:hover {
						font-size: 14px;
					}
				}

				.nav-area {
					background-color: darkcyan;
					height: 50px;
					color: white;
					border-radius: 5px;
					overflow: hidden;
				}

				.menu {
					display: table-cell;
					width: 250px;
					height: 50px;
					vertical-align: middle;
					font-size: 20px;
					font-weight: bold;
					transition: .3s;

					&:hover {
						background-color: aqua;
						font-size: 22px;
						cursor: pointer;
					}
				}

				.outer {
					width: 940px;
					height: 500px;
					background-color: cadetblue;
					color: white;
					border-radius: 5px;
					margin: auto;
					margin-top: 20px;
				}

				.logout {
					float: right;
				}

				.login-area {
					height: 80px;
					position: relative;
				}

				.afterLogin {
					position: absolute;
					right: 40px;
					bottom: 10px;
				}
			</style>
		</head>

		<body>

			<h1 align="center" style="margin-top: 50px; font-size: 40px;">Welcome to Mybatis World</h1>
			<br>

			<div class="login-area" align="right">

				<c:choose>
					<c:when test="${ empty loginUser }">
						<!-- case 1. 로그인 전 -->
						<form action="login.me" method="post">
							<table>
								<tr>
									<td>아이디</td>
									<td><input type="text" name="userId" required></td>
									<td rowspan="2"><button type="submit"
											style="height: 48px; cursor: pointer;">로그인</button></td>
								</tr>

								<tr>
									<td>비밀번호</td>
									<td><input type="password" name="userPwd" required></td>
								</tr>

								<tr>
									<td colspan="3" align="center">
										<a href="enrollForm.me">회원가입</a>
										<a href="">아이디/비번찾기</a>
									</td>
								</tr>
							</table>
						</form>
					</c:when>

					<c:otherwise>
						<!-- case 2. 로그인 후 -->
						<div class="afterLogin">
							<table>
								<tr>
									<td colspan="2">
										<h3 class="loginName">${ loginUser.userName }님 환영합니다.</h3>
									</td>
								</tr>

								<tr>
									<td><a href="">마이페이지</a></td>
									<td class="logout"><a href="logout.me">로그아웃</a></td>
								</tr>
							</table>
						</div>
					</c:otherwise>
				</c:choose>
			</div>

			<br>

			<div class="nav-area" align="center">
				<div class="menu" onclick="toHome()">HOME</div>
				<div class="menu">공지사항</div>
				<div class="menu" onclick="location.href='list.bo?cPage=1'">게시판</div>
				<div class="menu">ETC</div>
			</div>

			<script>
				function toHome() {
					location.href = "/mybatis"
				}
			</script>


		</body>

		</html>