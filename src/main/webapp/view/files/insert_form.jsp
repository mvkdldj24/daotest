<c:url value="/files/daotest.do" var="iform" />
<form action="${iform}" method="post">
	<div class="container" id="maindiv">
		<table class="table" id="itable"
			style="width: 500px; margin-left: 30%;">
			<thead>
				<tr>
					<th colspan="2" style="text-align: center; font-size: 25px; color: black; ">회원가입</th>
				</tr>
			</thead>
			<tbody id="join_tr">
				<tr>
					<td>아이디 :</td>
					<td><input type="text" name="m_id" placeholder="abc123"
						required="required" size="20px"></td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td><input type="password" name="m_pad" placeholder="love486"
						required="required" size="20px"></td>
				</tr>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="m_name" placeholder="홍길동"
						required="required" size="20px"></td>
				</tr>
				<tr>
					<td>나이 :</td>
					<td><input type="text" name="m_age" placeholder="20"
						required="required" size="20px"></td>
				</tr>
				<tr>
					<td>핸드폰 번호 :</td>
					<td><input type="text" name="m_tel"
						placeholder="010-1234-5678" required="required" size="20px"></td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td><input type="text" name="m_addr"
						placeholder="경기도 평택시 안중읍 송담리 123-4번지" required="required"
						size="43px"></td>
				</tr>
				<tr>
					<td>기타 :</td>
					<td><input type="text" name="i_title" placeholder="기타"
						required="required" size="43px"></td>
				</tr>
				<tr>
					<td>기타2 :</td>
					<td><input type="text" name="i_name" placeholder="기타"
						required="required" size="43px"></td>
				</tr>
			</tbody>
		</table>
	</div>
	<button style="margin-left: 552px; margin-bottom: 3%; width: 150px; height: 40px; "><b>가입</b></button>
</form>
