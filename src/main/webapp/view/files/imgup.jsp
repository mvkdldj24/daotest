<style>
#imgupdiv {
	margin-left: 60%;
	border: 1px solid black;
	width: 500px;
	height: 100px;
	margin-top: 30px; 
}
</style>
<div id="imgupdiv">
	<c:url value="/files/upprocimg" var="upprocimg" />

	<form action="${upprocimg}" method="post" enctype="multipart/form-data">
		<table>
		<tr>
		<th>이미지 업로드</th>
		</tr>
			<tr>
				<td>파일 :</td>
				<td><input type="file" name="file" style="width: 88px;"></td>
				<td><input type="text" name="title" placeholder="title"></td>
			</tr>
		</table>
		<button type="submit" value="전송" style="margin-left: 300px;">전송</button>
	</form>
</div>