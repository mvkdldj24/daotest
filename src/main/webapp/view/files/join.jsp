<style>
td, th {
	text-align: center;
	vertical-align: middle !important;
}

#dt {
	width: 610px;
	margin-left: 27%;
	padding-left: 5%;
	padding-right: 7%;
	border-radius: 20px;
}

h1 {
	font-weight: bold;
	margin-left: 10%;
}

ul {
	margin-top: 30px;
	padding-inline-start: 20px !important;
}

#li_sign {
	list-style: none;
	margin-top: 10px;
}

.lb_sign {
	font-size: 20px;
	float: left;
}

.btn_form {
	display: inline;
	
}

.btn_form>button {
	width: 147px;
	height: 50px;
	
}

input {
	height: 40px;
	font-size: 16px;
	width: 300px;
}

.li_ra {
	display: inline;
	margin-right: 30px;
	margin-left: 30px;
}

label {
	width: 150px;
	text-align: center;
}
</style>

<div class="container text-center"
	style="margin-top: 30px; font-weight: bolder; margin-left: 10px;">
	<div id="dt">
		<c:url value="/main/minsert" var="insert" />
		<form action="${insert}" method="post">
			<h1>회원 가입</h1>
			<ul>
				<li id="li_sign"><label class="lb_sign">아이디</label> <input
					type="text" name="m_id" placeholder=" id" required="required" /></li>

				<li id="li_sign"><label class="lb_sign">비밀번호</label></li>
				<li id="li_sign"><input type="password" name="si_pass"
					placeholder=" Password" required="required" /></li>

				<li id="li_sign"><label class="lb_sign">이름</label></li>
				<li id="li_sign"><input type="text" name="si_name"
					placeholder=" 홍길동" required="required" /></li>

				<li id="li_sign"><label class="lb_sign">생년월일</label></li>
				<li id="li_sign"><input type="text" name="si_birth"
					placeholder=" 940109" required="required" /></li>

				<li id="li_sign"><label class="lb_sign">성별</label></li>
				<li id="li_sign" class="li_ra"><input type="radio"
					name="si_gender" required="required" checked="checked" value="남"
					style="width: 16px; height: 16px;" /> 남</li>
				<li id="li_sign" class="li_ra"><input type="radio"
					name="si_gender" required="required" value="여"
					style="width: 16px; height: 16px;" /> 여</li>
				<p />
				<li id="li_sign"><label class="lb_sign">주소</label></li>
				<li id="li_sign"><input type="text" name="si_addr"
					placeholder=" 충남 천안시 서북구 두정동 424-4" required="required" /></li>

				<li id="li_sign"><label class="lb_sign">전화번호</label></li>
				<li id="li_sign"><input type="text" name="si_phone"
					placeholder=" 010-1234-5678" required="required" /></li>

				<li id="li_sign"><label class="lb_sign">E-mail</label></li>
				<li id="li_sign"><input type="text" name="si_phone"
					placeholder=" love@naver.com" required="required" /></li>
			</ul>
			<ul>
				<li class="btn_form" id="li_sign"><button type="submit"
						class="btn btn-success" style="margin-left: 150px;">가입</button></li>
				<li class="btn_form" id="li_sign"><button
						onclick="location.href='http://10.0.0.59:8080/pro_m/'"
						class="btn btn-danger">취소</button>
			</ul>
		</form>
	</div>
</div>