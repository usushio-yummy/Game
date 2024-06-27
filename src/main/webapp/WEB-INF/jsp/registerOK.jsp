<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめソフト ユーザー登録</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/registerOK.gif");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: #ff1493;
			}
			@keyframes fadein {
			  0% {opacity: 0}
			  100% {opacity: 1}
			}
			h1{
				margin-top: 150px;
			}
			h1,p,button{
			  font-size: 50px;
			  text-align: center;
			  font-family: "DotGothic16", sans-serif;
			}
			p,h1{
			  animation: fadein 1s forwards;
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
			opacity: 0.6;
			}
			#button:hover{
			 opacity: 1.0;
			}
		</style>
</head>
<body>
<h1>ユーザー登録完了</h1>
<p>ユーザー登録が完了しました。ログインを行い、メインページへ移動してください。</p>

<p><button id="button" onclick="location.href='LoginServlet'">ログインへ　</button></p>
</body>
</html>