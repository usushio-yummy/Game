<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめゲームソフト</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/postingOK.gif");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: #ff1493;
			}
			h1{
			  margin-top: 150px;
			}
			h1,p,button{
			  font-size: 50px;
			  text-align: center;
			  font-family: "DotGothic16", sans-serif;
			}
			h1,p{
				animation: fadein 2s forwards;

			}
			@keyframes fadein {
				0% {opacity: 0}
				100% {opacity: 1}
			}
			a{
				color: white;
			}
			button{
			border: none;
			background: transparent;
			background-image: url("img/button.png");
			background-size: cover;
			margin-left: 300px;
			color: white;
			padding-left:50px;
			padding-right: 50px;
			padding-bottom: 50px;
			padding-top: 50px;
			opacity: .7;
			margin-top: 0px;
			}
			#button:hover{
			 opacity: 1.0;
			}
			.haikei{
				background-image: url("img/postingOK_div.png");
				background-blend-mode:lighten;
				animation: fadein 2s forwards;
			}
			.toumei{
				background-color:rgba(255,255,255,0.2);
				animation: fadein 2s forwards;
			}
		</style>
</head>
<body>

<div class="haikei">
<div class="toumei">
<h1>投稿完了!</h1>
<p>投稿が完了しました。サイトの繁栄に尽力いただきありがとうございます！！</p>
</div>
</div>
<button onclick="location.href='HomeServlet'" id="button">ホームへ　</button><button onclick="location.href='GameServlet'" id="button">投稿一覧へ</button>
</body>
</html>