<form role="form" action="modifyPage", method="post">
	<input type='hidden' name='bno' value = "${boardVO.bno }">
	<input type='hidden' name='page' value = "${cri.page }">
	<input type='hidden' name='perPageNum' value = "${cri.perPageNum }">
	<input type='hidden' name='searchType' value = "${cri.searchType}">
	<input type='hidden' name='keyword' value = "${cri.keyword}">
</form>

<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/sboard/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/sboard/removePage");
			formObj.submit();
		});
		
		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/sboard/list");
			formObj.submit();
		});
	});
</script>