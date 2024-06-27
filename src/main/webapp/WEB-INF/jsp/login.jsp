<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめソフト　ログイン</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/login.png");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: white;
			}
			@keyframes fadein {
			  0% {opacity: 0}
			  100% {opacity: 1}
			}
			h1{
			  margin-top: 70px;
			  margin-bottom: 30px;
			  font-size: 80px;
			  text-align: center;
			}
			button{
			  font-family: "DotGothic16", sans-serif;
			  margin-left: 50px;
			}
			form,h1{
			  animation: fadein 1s forwards;

			}
			form,a,input{
			  font-size: 50px;
			  margin-left: 200px;
			  font-family: "DotGothic16", sans-serif;
			  margin-bottom: 10px;
			}
			#top{
			  margin-left: 0px;
			  color: red;
			}
			#button,#submit{
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
			 opacity: 1.5;
			}
		</style>
</head>
<body>
<a id="top" href="WelcomeServlet">トップへ</a>
<h1>ログイン</h1>
<form action="LoginServlet" method="post">
ユーザーID：<input type="text" name="userId" required><br>
パスワード：<input type="password" name="pass" required><br>
<button onclick="location.href='RegisterServlet'" id="button">ユーザー登録</button>
<input id="button" type="submit" value="　ログイン　">
</form>
</body>
</html>