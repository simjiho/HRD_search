<%@page import="vo.SearVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.HosDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/master/header.jsp"/>
<%
	request.setCharacterEncoding("UTF-8");

	int r_no = Integer.parseInt(request.getParameter("r_no"));
	
	System.out.print(r_no);
	
	HosDAO dao = new HosDAO();
	SearVO vo = dao.getSearch(r_no);
	
	System.out.print(vo.getR_no());
%>
<section>
	<h2>예약번호</h2>
	<table>
		<tr>
			<td>에약번호</td>
			<td>성명</td>
			<td>성별</td>
			<td>병원이름</td>
			<td>에약날짜</td>
			<td>에약시간</td>
			<td>백신코드명</td>
			<td>병원지역</td>
		</tr>
<%
	if(vo != null){
%>
		<tr>
			<td><%=vo.getR_no() %></td>
			<td><%=vo.getJ_name() %></td>
			<td><%=vo.getGender() %></td>
			<td><%=vo.getH_name() %></td>
			<td><%=vo.getDay() %></td>
			<td><%=vo.getR_time() %></td>
			<td><%=vo.getR_vcode() %></td>
			<td><%=vo.getH_zone() %></td>
		</tr>

<%
	}
%>
	</table>
</section>
<jsp:include page="/master/footer.jsp"/>