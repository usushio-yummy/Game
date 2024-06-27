<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめゲームソフト　メインページ</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/main.gif");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: white;

			}
			h1,p{
			margin-right: 0px;
			padding-right: 0px;
			}
			div{
			text-align: center;
			}
			button{
			font-size: 30px;
			padding: 50px 10px 50px 10px;
			margin: 20px;
			font-family: "DotGothic16", sans-serif;
			box-shadow: 0px 10px 1px gray;
			display: inline-block;
			border: none;
			border-radius: 50%;
			opacity: 0.5;
			}
			.button:hover {
		    box-shadow: unset;
		    transform: translateY(4px);
		    opacity: 1.0;
			}
			#mypage,#welcome{
			 padding-right: 50px;
			 padding-left: 50px;
			}
			#mypage{
				background-color: #00ff7f;
			}
			#game{
				background-color: pink;
			}
			#posting{
				background-color: red;
			}
			#welcome{
				background-color: blue;
			}
		</style>
</head>
<body>
<h1>メインページ</h1>
<p>ようこそ<c:out value="${userId.userId}" />さん</p>

<div><button id="mypage" onclick="location.href='MypageServlet'" class="button">マイページ</button></div>
<div><button id="game" onclick="location.href='GameServlet'" class="button">一　　覧　　　</button>　　　　　　　　　　
<button id="posting" onclick="location.href='PostingServlet'" class="button">投　　稿　　　</button>
</div>
<div><button id="welcome" onclick="location.href='WelcomeServlet'" class="button">ログアウト</button></div>

</body>
</html>