<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>おすすめソフト投稿</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" >
		<link href="https://fonts.googleapis.com/css2?family=DotGothic16&display=swap" rel="stylesheet">
		<style>
			body {
			  background-image: url("img/posting.gif");
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			  font-family: "DotGothic16", sans-serif;
			  font-weight: 10;
			  color: white;
			}
			h1{
				text-align: center;
				margin-top: 0px;
				margin-bottom: 0px;
			}
			h1,a{
			  font-size: 50px;
			}
			table{
				background-image: url("img/game_table.png");
				background-size: cover;
				margin-left:auto;
				margin-right: auto;
				width: 70%;
				padding-top: 80px;
				padding-bottom: 80px;
				animation: fadein 2s forwards;
			}
			@keyframes fadein {
				0% {opacity: 0}
				100% {opacity: 1}
			}
			#top{
			  margin-left: 0px;
			  color: red;
			}
			#submit{
			border: none;
			background: transparent;
			background-image: url("img/button.png");
			background-size: cover;
			font-size: 50px;
			color: white;
			float: right;
			padding-left:50px;
			padding-right: 50px;
			padding-bottom: 2px;
			padding-top: 8px;
			opacity: .7;
			}
			#submit:hover{
			 opacity: 1.0;
			}
			th,input,textarea,select{
			  font-size: 20px;
			  font-family: "DotGothic16", sans-serif;
			}
			th{
				padding: 10px;
			}
			#read{
				background-color: silver;
			}
		</style>
	</head>
	<body>
	<h1>おすすめソフト投稿</h1>
	<form action="PostingServlet" method="post">
		<table>
			<tr>
				<th>投稿者</th>
				<th><input readonly name="userId" value="${userId.userId}" id="read"></th>
				<th>ゲーム機</th>
				<th>
					<select name="game" required>
					<option></option>
					<option value="PS1">プレイステーション(PS)</option>
					<option value="PS2">プレイステーション２(PS2)</option>
					<option value="PS3">プレイステーション３(PS3)</option>
					<option value="PS4">プレイステーション４(PS4)</option>
					<option value="PS5">プレイステーション５(PS5)</option>
					<option value="NES">ファミリーコンピュータ(NES)</option>
					<option value="SNES">スーパーファミコン(SNES)</option>
					<option value="N64">ニンテンドーロクヨン(N64)</option>
					<option value="GC">ゲームキューブ(GC)</option>
					<option value="Wii">ウィー(Wii)</option>
					<option value="WiiU">ウィーユー(WiiU)</option>
					<option value="Switch">ニンテンドースイッチ(Switch)</option>
					<option value="other">その他</option>
					</select>
				</th>
			</tr>
			<tr>
				<th>ソフト名</th>
				<th colspan="3"><input type="text" size="64" name ="name" required></th>
			</tr>
			<tr>
				<th>ゲームジャンル</th>
				<th colspan="3"><input type="text" size="64" name ="genre" required></th>
			</tr>
			<tr>
				<th>内容</th>
				<th colspan="3"><textarea name="content" cols="63" rows="6" required></textarea></th>
			</tr>
		</table>
		<a id="top" href="HomeServlet">ホームへ</a>
		<input id="submit" type="submit" value="投稿">
	</form>
	</body>
</html>