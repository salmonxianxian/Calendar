<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript">
$(document).ready(function(){
	//글작성 버튼 누르면 이동
	$("#btnWrite").click(function(){
		location.href="/board/write";
	});
	
});


//라디오버튼클릭시 option 바뀜
function changes(value) {
	
	if(value=='base') {
		nArray = new Array("기아타이거즈","두산베어스","롯데자이언츠","삼성라이온즈",
				"키움히어로즈","한화이글스","KT위즈","LG트윈즈","NC다이노스","SK와이번스");
	} else {
		nArray = new Array("강원 FC","경남FC","대구FC","상주FC","성남FC","수원삼성블루윙즈","울산현대"
				,"인천유나이티드","전북현대모터스","제주유나이티드","포항스틸러스","FC서울");
	}
	
	for (i=0; i<form.sel.length; i++){
		form.sel.options[i] = null;
	}
	
	for(i=0; i<nArray.length; i++){
		form.sel.options[i] = new Option(nArray[i]);
	}
	
}


$(document).ready(function(){
	  $('.more2').click(function(){
	    if($('.more2').hasClass('more2')){
	       $('.more2').addClass('close').removeClass('more2');
	       $('.listnick').css('visibility', 'visible');
	    }else if($('.close').hasClass('close')){
	       $('.close').addClass('more2').removeClass('close');  
	       $('.listnick').css('visibility', 'hidden');
	    }
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

#pagingBox {
	pasition: relative;
}

#btnBox {
	position: fiexd;
	top: 700px;
	botton: 0px;
	right: 800px;
	height: 40px;
	margin: auto;
	text-align: center;
}

/* #listtable { */
/* 	margin-left: auto; */
/* 	margin-right: auto; */
/* } */

/* 본문 내용 몇글자만 보이고 가리기 */
#qhsans {
	overflow: hidden;
 	text-overflow: ellipsis;

}

.listnick {
  font-size:13px;
  position:absolute; 
  top:230px;
  left: 450px;
/*   right: 320px; */
  width:150px; 
  height:80px; 
  background: #dcdcdc;
  visibility:hidden;
}

.more2 {
	display: inline;
	width: 80px;
	hight: 20px;
	background-position: 80px -78px;
	
}

.more2:hover, .close:hover {
  cursor:pointer;
}



</style>

<!-- <script>


</script> -->


<!-- 사이드바 -->
<div style="width:200px; background: #AAEBAA; float:left; height:660px;"> 
<br><br><br>
<div style="text-align: center;"><label>상세검색</label></div><br><br>

<div style="text-align: center;"><label>종목</label></div>

<form id="searchForm" action="/board/list" method="get" name='form' style="text-align: center;">
	<input type="radio" name="sports" onclick="changes('base');"> 야구
	
	<input type="radio" name="sports" onclick="changes('foot');"> 축구


<br><br>
<label style="text-align: center;">팀</label>
<br>

<select name='sel' >
<option value=''>★선택하세요★</option>
<option value='1'>기아타이거즈</option>
<option value='2'>두산베어스</option>
<option value='3'>롯데자이언츠</option>
<option value='4'>삼성라이온즈</option>
<option value='5'>키움히어로즈</option>
<option value='6'>한화이글스</option>
<option value='7'>KT위즈</option>
<option value='8'>LG트윈즈</option>
<option value='9'>NC다이노스</option>
<option value='10'>SK와이번스</option>
</select>



<br>
<div style="text-align: center">
<label>지역</label><br>
<select>
	
	<option value='0'>★선택하세요★</option>
	<option value='1'>광주</option>
	<option value='2'>대구</option>
	<option value='3'>대전</option>
	<option value='4'>부산</option>
	<option value='5'>상주</option>
	<option value='6'>서울</option>
	<option value='7'>성남</option>
	<option value='8'>수원</option>
	<option value='9'>울산</option>
	<option value='10'>인천</option>
	<option value='11'>전주</option>
	<option value='12'>제주</option>
	<option value='13'>창원</option>
	<option value='14'>춘천</option>
	<option value='15'>포항</option>

</select>
</div>

<br>
	<div style="text-align:center">
	
	<input type="button" value="검색"/>
	<!-- <button type="submit" id="btnSearch" class="btn">검색</button> -->
	</div>
</form>

 

</div>




<div class="center" style="width:1200px; height: 660px;">

<br>
<div class="maching"><h1>직관 매칭 게시판</h1></div>
<hr>

<table border="1" style="margin-left: auto;
	margin-right: auto;" style="table-layout:fixed;">
<thead>
	<tr>
		<th style="width: 5%;">번호</th>
		<th style="width: 20%;">닉네임</th>
		<th style="width: 40%;">제목</th>
<!-- 		<th style="width: 35%;">내용</th> -->
		<th style="width: 5%;">스케줄</th>
		<th style="width: 10%;">응원하는팀</th>
		<th style="width: 15%;">작성일</th>
		<th style="width: 5%;">조회수</th>
	</tr>
</thead>


<c:forEach items="${list}" var="i">
 <tr>
 
 	<td>${i.boardno }</td>
 	<td>${i.nickname }
 	<span style="float:right;" class="more2">
	<span class="blind">
	<img src="/logo/semi_default.png" width="30px" height="20px">
	</span>
	</span>
	
	<div class="listnick">
  	<ul class="list">
  	<li> 프로필 </li>
  	</ul>
	</div>
 	</td>
 	<td><a href="/board/view?boardno=${i.boardno}">${i.title }</a></td>
<%--  	<td style="text-overflow:ellipsis; overflow:hidden">${i.content }</td> --%>
 	<td>${i.scheduleno }</td>
 	<td>${i.team }</td>
 	<td><fmt:formatDate value="${i.insertdate }" pattern="yyyy-MM-dd"/></td>
 	<td>${i.hit }</td>
 </tr>
 
 </c:forEach>
 
 </table>
 
 <div id="pagingBox">
 <c:import url="/WEB-INF/views/layout/paging.jsp"/>
 
 <br><br><br>
 <div id="btnBox">
 <button id="btnWrite" class="btn btn-primary">글작성</button>
   
 </div>
 
 </div>
 
</div>



<c:import url="/WEB-INF/views/layout/footer.jsp" />



