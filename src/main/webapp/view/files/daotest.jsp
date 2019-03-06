

<div class="container col-sm-10" style="margin-top: 30px">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>핸드폰번호</th>
				<th>주소</th>
				<th>기타</th>
				<th>기타2</th>
			</tr>
		</thead>
		<c:forEach var="i" items="${list}">
			<tbody>
				<tr>
					<td>${i.M_ID}</td>
					<td>${i.M_PAD}</td>
					<td>${i.M_NAME}</td>
					<td>${i.M_AGE}</td>
					<td>${i.M_TEL}</td>
					<td>${i.M_ADDR}</td>
					<td>${i.I_TITLE}</td>
					<td>${i.I_NAME}</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
</div>

