<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>おすすめソフト一覧</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/haikei.jpg");
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
			table {
			  width:70%;
			  background-image: url("img/game_table.png");
			  background-size: cover;
			  margin-left: auto;
			  margin-right: auto;
			  color: white;
			  font-size: 20px;
			  padding: 100px;
			}
			th {
				text-align:start;
				padding-bottom: 10px;
			}
			.contents {
			  .content {
			    opacity: 0;
			    transition-duration: 0.5s;
			    transition-property: opacity, transform;

			    & + .content {
			      margin-top: 50px;
			    }
			    &.is-scrollIn {
			      opacity: 1;
			      transform: translate(0, -50px);
			    }
			  }
			}
		</style>
	</head>
	<body>
		<h1>おすすめソフト</h1>

		<h2>投稿一覧</h2>
		<p>ユーザーが投稿したおすすめソフトの一覧です。</p>
		<br><br>
		<c:if test="${not empty errorMsg}">
			<p><c:out value="${errorMsg}"/></p>
		</c:if>

		<c:forEach var="post" items="${postList}">
			<div class="contents">
			  <div class="content js-fadeIn">
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
			</table></div></div><br>
		</c:forEach>
		<a class="home" href="HomeServlet">ホームへ</a>　・<a class="toukou" href="PostingServlet">投稿する</a>
		<script>
		let els = document.querySelectorAll('.js-fadeIn');

		els.forEach(function(fadeIn) {
		  let windowHeight = window.innerHeight;

		  window.addEventListener('scroll', function() {
		    let offset = fadeIn.getBoundingClientRect().top;
		    let scroll = window.scrollY;

		    if(scroll > offset - windowHeight + 250){
		       fadeIn.classList.add('is-scrollIn');
		    }
		  })
		})
		</script>
	</body>
</html>