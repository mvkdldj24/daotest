<c:url value="/files/upproc" var="upproc"></c:url>
<h2>파일 업로드</h2>

<c:if test="${! empty finfo }">

	<ul>
		<li>${finfo.title}(파일이름:${finfo.oname})</li>
	</ul>

</c:if>


<form action="${upproc}" method="post" enctype="multipart/form-data">
	<ul>
		<li>파일 : <input type="file" name="file" required="required"></li>
		<li>제목 : <input type="text" name="title" required="required"
			placeholder="예 > 제목"></li>
		<li><button>전송</button>
	</ul>
</form>
