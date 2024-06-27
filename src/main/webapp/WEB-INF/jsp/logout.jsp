<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめソフト ログアウト</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/logout.png");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: white;
			  animation: fadein 3s forwards;
			}
			@keyframes fadein {
			  0% {opacity: 0}
			  100% {opacity: 1}
			}
			h1{
				margin-top: 120px;
			}
			h1,p,button{
			  font-size: 50px;
			  font-family: "DotGothic16", sans-serif;
			  text-align: center;
			}
			button{
			margin-left: 240px;

			}
			h1,p{
			  width: 80%;
			  margin-left: 150px;
			  margin-bottom: 0px;
			}
			#button{
			margin-top:20px;
			border: none;
			background: transparent;
			background-image: url("img/button.png");
			background-size: cover;
			font-size: 50px;
			color: white;
			padding-left:50px;
			padding-right: 50px;
			padding-bottom: 40px;
			padding-top: 60px;
			opacity: .7;
			margin-top: 0px;
			}
			#button:hover{
			 opacity: 1.0;
			}
		</style>
</head>
<body>
<h1>ログアウト</h1>
<p>長時間操作が行われなかった、あるいはログインせず直接アクセスを行った可能性があります。<br>
恐れ入りますが、再度ログインをお願いいたします。</p>
<button onclick="location.href='WelcomeServlet'"id="button">トップ画面へ</button>
<button onclick="location.href='LoginServlet'" id="button">ログインする</button>
</body>
</html>