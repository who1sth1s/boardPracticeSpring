<div class "text-center">
	<ul class="pagination">
		<c:if test="${ pageMaker.prev }">
			<li><a href="listPage?page=${pageMaker.makeQuery(pageMaker.startPage - 1)}">$laquo;</a></li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<li <c:out value = "${pageMaker.cri.page == idx?' class = active': ''}"/>>
				<a href="listPage${pageMaker.makerQuery(idx)}">${idx}</a>			
			</li>
		</c:forEach>
		
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<li><a href="listPage?page=${pageMaker.makeQuery(pageMaker.endPage + 1)}">$raquo;</a></li>
		</c:if>
		
		<c:forEach items="${list }" var="boardVO">
			<tr>
				<td>${boardVO.bno }</td>
				<td>
					<a href='/board/readPage${pageMaker.makeQuery(pageMaker.cri.page) }$bno=${boardVO.bno}'></a>
				</td>
				<td>${boardVO.writer }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate }" /></td>
				<td><span class="badge bg-red">${boardVO.viewcnt }</span></td>
			</tr>
		</c:forEach>
		
	</ul>
</div>