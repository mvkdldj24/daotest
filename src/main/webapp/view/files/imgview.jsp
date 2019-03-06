<style>
#imglists {
	width: 250px;
}
</style>

<div class="container" style="margin-top: 30px">
	<div class="media border p-3">
		<img src="${pageContext.request.contextPath}/resources/images/alt.jpg"
			alt="사앍" class="mr-3 mt-3 rounded-circle" style="width: 60px;">
		<div class="media-body">
			<h4>
				사앍 <small><i>Posted on January 24, 2019</i></small>
			</h4>
			<p>업로드한 이미지가 보이지 않을경우 F5를 연타해 보세요^^</p>
		</div>
	</div>
	<div class="row" style="margin-top: 20px;">
		<c:forEach var="img" items="${imglist}">
			<div class="col-sm-4">	
				<div class="alert alert-warning" align="center">
					<h5>${img.I_TITLE}</h5>
					<img src="${pageContext.request.contextPath}/resources/img/${img.I_FNAME}" id="imglists"><p>${img.I_ONAME}</p>
				</div>
			</div>
		</c:forEach>
	</div>
</div>