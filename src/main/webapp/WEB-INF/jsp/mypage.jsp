<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>おすすめソフト マイページ</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/mypage.webp");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;

			}
			.home{
			position:fixed; top:10px; left:10px;
			color: white;
			font-size: 50px
			}
			.toukou{
			position:fixed; top:10px; right:10px;
			color: white;
			font-size: 50px;
			}
			h1,h2,p{
			  color: white;
			  text-align: center;
			}
			@keyframes fadein {
			  0% {opacity: 0}
			  100% {opacity: 1}
			}
			#none{
			background-image: url("img/screen.gif");
			background-size: cover;
			width: 60%;
			margin: 10px auto;
			color: black;
			font-size: 30px;
			text-align: left;
			padding-bottom:20px;
			}
			button{
				font-family: "DotGothic16", sans-serif;
				font-size: 50px;
				border: none;
				background: transparent;
				background-image: url("img/welcome_button.png");
				background-size: cover;
				color: white;
				padding: 30px 20px 40px 40px;
				opacity: 0.5;
			}
			#button{
				margin-top: 350px;
				margin-left: 550px;
			}
			#button:hover{
				opacity: 1.0;
			}
			table {
			  width:70%;
			  background-image: url("img/mypage_table.gif");
			  background-size: cover;
			  margin-left: auto;
			  margin-right: auto;
			  color: black;
			  font-size: 20px;
			  padding: 100px;
			  animation: fadein 2s forwards;
			}
			th {
				text-align:start;
				padding-bottom: 10px;
			}
		</style>
	</head>
	<body>
		<h1>マイページ</h1>

		<h2>投稿一覧</h2>
		<c:if test="${not empty errorMsg}">
			<p><c:out value="${errorMsg}"/></p>
		</c:if>
		<c:choose>
		<c:when test="${empty postList}">
			<p id="none">
			投稿はまだしていません。<br>おすすめソフトを投稿しよう！<br>
			<button id="button" onclick="location.href='PostingServlet'">投稿する</button></p>
		</c:when>
		<c:otherwise>
		<p><c:out value="${userId.userId}"/>さんが投稿したおすすめソフトの一覧です。</p>
		</c:otherwise>
		</c:choose>
		<c:forEach var="post" items="${postList}">
				<table>
				<tr>
					<th>投稿者:<c:out value="${post.userId}"/></th>
					<th>ゲーム機:<c:out value="${post.game}"/></th>
				</tr>
				<tr>
					<th colspan="2">ゲームソフト名:<c:out value="${post.name}"/></th>
				</tr>
				<tr>
					<th colspan="2">ゲームジャンル:<c:out value="${post.genre}"/></th>
				</tr>
				<tr>
					<th colspan="2">内容:<c:out value="${post.content}"/></th>
				</tr>
			</table><br>
		</c:forEach>
		<a class="home" href="HomeServlet">ホームへ</a>　・<a class="toukou" href="PostingServlet">投稿する</a>
	</body>
</html>