<form role="form" action="modifyPage", method="post">
	<input type='hidden' name='bno' value = "${boardVO.bno }">
	<input type='hidden' name='page' value = "${cri.page }">
	<input type='hidden' name='perPageNum' value = "${cri.perPageNum }">
</form>

$(".btn-primary").on("click", function(){
	formObj.attr("method", "get");
	formObj.attr("action", "/board/removePage");
	formObj.submit();
});

$(".btn-warning").on("click", function(){
	formObj.attr("action", "/board/modifyPage");
	formObj.attr("method", "get");
	formObj.submit();
});