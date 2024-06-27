<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>おすすめゲーム投稿サイトへようこそ！</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/welcome.jpg");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: white;
			  font-size: 30px;
			}
			button{
			margin-top:20px;
			border: none;
			background: transparent;
			background-image: url("img/welcome_button.png");
			background-size: cover;
			color: white;
			padding-left:50px;
			padding-right: 50px;
			padding-bottom: 55px;
			padding-top: 45px;
			opacity: .7;
			margin-top: 0px;
			  font-size: 30px;
			  font-family: "DotGothic16", sans-serif;
			}
			#button:hover{
			opacity: 1.0;
			}
		</style>
</head>
<body>
	<h1>おすすめゲーム投稿サイト</h1>
	<p>このサイトはユーザー登録した人たちがおすすめのゲームソフトを投稿することで、
	<br>今まで知らなかったソフトを共有するサイトです。</p>

	　　　<button onclick="location.href='LoginServlet'" id="button">ログイン　　</button>　　　　　　　
	<button onclick="location.href='RegisterServlet'" id="button">ユーザー登録</button>
</body>
</html>