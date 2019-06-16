<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<style type="text/css">
table, th{
	text-align: center;
	
}

.maching { /* 매칭게시판 가운데 정렬 */
 	text-align: center;
 	width: 1200px;
}

</style>

<div style="width:200px; background: #ffff; border-right: 1px solid #b4b4b4; float:left; height:660px;"> 


<div id="maching" style="margin-center: auto; text-align:center;">
   <br>
   <br>
   <div class="text-muted"><h2 >목 록</h2></div>
   <br>
   <br>
   <h3><a href="/manage/page" class="text-danger">관리자 페이지</a></h3>
   <br>
   <br>
   <h3><a href="/manage/member" class="text-warning">회원 목록 페이지</a></h3>
   </div>
</div>
</div>


<div class="center" style="width:1200px; height: 640px;" >
<div class="maching"><h1>회원 관리</h1></div>
<hr>

<table border="1" style="margin-left: auto;
	margin-right: auto; table-layout:fixed; ">

<thead>

	<tr>
		<th style="width: 5%">아이디</th>
		<th style="width: 10%">닉네임</th>
		<th style="width: 5%">나이</th>
		<th style="width: 10%">가입일</th>
	</tr>
</thead>


<form name=chk method="post" >

<tbody>
<c:forEach items="${list }" var="i" >
	<tr>
		<td><a href="/manage/memberinfo?userid=${i.userid }">${i.userid }</a></td>
		<td>${i.nickname }</td>
		<td>${i.age }</td>
		<td><fmt:formatDate value="${i.joindate }" pattern="yyyy-MM-dd" /></td>
	</tr>
</c:forEach>
</tbody>
</form>
</table>
<div id="pagingBox">
<c:import url="/WEB-INF/views/layout/managememberPaging.jsp" />
</div>
</div>






<c:import url="/WEB-INF/views/layout/footer.jsp" />
    