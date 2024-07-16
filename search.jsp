<%@page import="vo.SearVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/master/header.jsp"/>
<section>
	<h2>백신 예약 조회</h2>
	<form action="searchProc.jsp" name="frm" method="post">
		<table>
			<tr>
				<td>예약번호</td>
				<td>
					<input type="text" name="r_no" id="r_no">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="조회하기" onclick="return check()">
					<button onclick="location.href='/index.jsp';">홈으로</button>
				</td>
			</tr>
		</table>
	</form>
</section>
<script>
	function check(){
		if(document.querySelector("#r_no").value.trim()==""){
			alert("조회된 데이터가 없습니다.");
			document.querySelector("#r_no").focus();
			return false;
		}
		return true;
	}
</script>
<jsp:include page="/master/footer.jsp"/>