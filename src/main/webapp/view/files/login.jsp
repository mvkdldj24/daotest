<style>
.log {
	width: 400px;
	text-align: center;
	margin-left: 27%;
}

ul {
	padding-inline-start: 0px !important;
}

input {
	width: 70%;
	height: 40px;
	font-size: 16px;
	margin-bottom: 20px;
}

.btn-info {
	width: 100px;
	height: 100px;
	margin-top: -215px;
	margin-left: 380px;
}

li {
	list-style: none;
}

#loglabel {
	width: 60px;
	font-size: 23px;
	font-weight: bolder;
}
</style>

<div class="container text-center" style="margin-top: 30px;">
	<c:url value="" var="login" />
	<form action="${login}" method="post">
		<div class="log">
			<h1 style="margin-left: 45px;">Login</h1>
			<ul>
				<li><label id="loglabel">ID</label><input type="text"
					name="m_id" placeholder=" 아이디를 입력하세여" required="required" /></li>
				<li><label id="loglabel">PW</label><input type="password"
					name="m_pwd" placeholder=" 비밀번호를입력하세요" required="required" /></li>
			</ul>
			<ul>
				<li
					style="font-size: 15px; margin-top: -20px; margin-bottom: 5px; margin-left: 63px;"><a
					href="">회원가입</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">아이디 찾기</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a href="">비밀번호 찾기</a></li>
				<li>
					<button type="submit" class="btn btn-info">로그인</button>
				</li>
			</ul>
		</div>
	</form>
</div>