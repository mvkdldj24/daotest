<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#detailform {
	text-align: center;
	font-weight: bolder;
	width: 500px;
	height: 450px;
	margin-left: 310px;
	padding-top: 30px;
	padding-right: 55px;
}

li {
	list-style: none;
}

#dlabel {
	width: 100px;
}

input {
	width: 200px;
	border-radius: 10px;
	border-color: green;
}
</style>
<meta charset="UTF-8">
</head>
<body>
	<br>
	<h2 style="text-align: center;">제품 등록 페이지</h2>
	<hr>
	<form action="" method="get" id="detailform">
		<ul class="info_box">
			<li><label id="dlabel">이&nbsp;름</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">월 렌탈료</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">모델명</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">브랜드</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">제조사</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">색&nbsp;상</label><input type="text"
				name="p_mname" required="required"></li>

			<li><label id="dlabel">36개월</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">48개월</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel">60개월</label><input type="text"
				name="p_mname" required="required"></li>
			<li><label id="dlabel" style="margin-left: 10px;">사진 첨부</label><input
				type="file" name="p_mname" required="required"
				class="btn btn-secondary"
				style="font-size: 12px; width: 200px; margin-left: -10px; border-radius: 10px;"></li>
		</ul>

		<input type="button" value="입력"
			style="margin-left: 140px; margin-bottom: 30px; border-radius: 10px;"
			class="btn btn-info">

	</form>
</body>
</html>