<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript">
$(document).ready(function() {

	
    $('#btnDelete').click(function(){
        var $checkboxes = $("input:checkbox[name='checkRow']:checked");
        
        // 체크된 대상들을 map으로 만들고 map을 문자열로 만들기
        var map = $checkboxes.map(function() {
           return $(this).val();
        });
        var names = map.get().join(",");
        
        // 전송 폼
        var $form = $("<form>")
           .attr("action", "/manage/delete")
           .attr("method", "post")
           .append(
              $("<input>")
                 .attr("type", "hidden")
                 .attr("name", "names")
                 .attr("value", names)
           );
        $(document.body).append($form);
        $form.submit();
        
     });
	
});
</script>

<style type="text/css">
table, th{
	text-align: center;
	
}

.maching { /* 매칭게시판 가운데 정렬 */
 	text-align: center;
 	width: 1200px;
}

</style>

<div class="bg-info" style="width:200px; float:left; height:660px;"> 

<div id="maching" style="margin-center: auto;">
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

<div class="center" style="width:1200px; height: 640px;">

<div class="maching"><h1>관리자 페이지</h1></div>
<hr>
<table border="1" style="margin-left: auto;
	margin-right: auto;" style="table-layout:fixed;">
<thead>
	<tr>
		<th style="width: 5%">선택</th>
		<th style="width: 5%">글번호</th>
		<th style="width: 20%">제목</th>
		<th style="width: 10%">작성자</th>
		<th style="width: 10%">작성일</th>
	</tr>
</thead>


<form name=chk method="post" action="delete.jsp">

<tbody>
<c:forEach items="${list }" var="i">
	<tr>
		<td><input type="checkbox" name="checkRow" value="${i.boardno }"/></td>
		<td>${i.boardno }</td>
		<td><a href="/board/view?boardno=${i.boardno}">${i.title }</a></td>
		<td>${i.nickname }</td>
		<td><fmt:formatDate value="${i.insertdate }" pattern="yyyy-MM-dd" /></td>
	</tr>
	
</c:forEach>
</tbody>
</form>
</table>
<div id="pagingBox">
<c:import url="/WEB-INF/views/layout/managePaging.jsp" />
</div>

<div class="text-center">	
	
	<button id="btnDelete" class="btn btn-danger">삭제</button>
	
</div>

</div>





<c:import url="/WEB-INF/views/layout/footer.jsp" />
    