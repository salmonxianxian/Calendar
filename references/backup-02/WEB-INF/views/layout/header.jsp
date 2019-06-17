<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>직관의 민족 - 우리가 어떤 민족입니까</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet"> 

  <!-- Custom styles for this template -->
  <link href="css/grayscale.min.css" rel="stylesheet">

  <!-- Bootstrap core JavaScript -->
  <script src="bootstrap/vendor/jquery/jquery.min.js"></script>
  <script src="bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/grayscale.min.js"></script>

    <!-- Bootstrap core JavaScript -->
  <script src="bootstrap/vendor/jquery/jquery.min.js"></script>
  <script src="bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="bootstrap/js/grayscale.min.js"></script>

  <!-- jQuery 2.2.4 -->
<!-- <script type="text/javascript"
 src="http://code.jquery.com/jquery-2.2.4.min.js"></script> -->

</head>



<!-- custom css -->
<!-- <style type="text/css">
#header {
	text-align: left;
	background: #828282;
	height: 80px;
	width: 1200px;
}

#footer {
	text-align: center;
	display: table;
	background: #828282;
	height: 60px;
	width: 1200px;
}

.p {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}

.botton {
	text-align: center;
}

.more {
	display: inline;
	width: 80px;
	hight: 20px;
/*  	background-image:url('/logo/semi_default.png');  */ 
	background-position: 80px -78px;
	
}

.blind{
	postion: absolute;
	overflow: hidden;
	clip: rect(0 0 0 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.more:hover, .close:hover {
  cursor:pointer;
}

.close {
  display:block;
  width: 80px;
  height: 16px;
  background-position: -166px -78px;
}


.board {
  font-size:13px;
  position:absolute; 
  top:60px;
  right: 320px;
  width:150px; 
  height:80px; 
  background: #dcdcdc;
  visibility:hidden; 
}

.list {
  float:left;
  position: fixed;
}

.list li {
  list-style:none;
  margin-top:5px;
}

.list li:hover {
  text-decoration:underline;
  cursor:pointer;
}

.h {
 font-family: 'Nanum Gothic Coding', monospace;
}


</style> -->



</head>


<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#projects">Projects</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#signup">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container d-flex h-100 align-items-center">
      <div class="mx-auto text-center">
        <h1 class="mx-auto my-0 text-uppercase">Grayscale</h1>
        <h2 class="text-white-50 mx-auto mt-2 mb-5">A free, responsive, one page Bootstrap theme created by Start Bootstrap.</h2>
        <a href="#about" class="btn btn-primary js-scroll-trigger">Get Started</a>
      </div>
    </div>
  </header>




<!-- old version -->
<!-- <body data-spy="scroll" data-target="#templateux-navbar" data-offset="200"> 



<div id="header">

	<span style="font-size:3.5em;" id="h"><a href="/main"><span class="text-danger">직관</span>의 민족</a></span>
	<span>
	<button type="button" onclick='location.href="/schedule/week";'>일정</button></span>
	<span>
	<button type="button" onclick="location.href='/board/list'">직관매칭</button></span> -->
	
	
	
	    <!-- 비로그인상태 -->
    <c:if test="${not login }">
	    <button onclick='location.href="/login";'>로그인</button>
	    <button onclick='location.href="/signup";'>회원가입</button>
    </c:if>
	
	    <!-- 로그인상태 -->
    <c:if test="${login }">
		<span style="float:right; padding: 20px 10px;" class="more">
		<span class="blind">
			<img src="../../logo/semi_default.png" width="60px" height="50px">
		</span>
		</span>
		
		<div class="board">
		  	<ul class="list">
			  	<li> 프로필 </li>
			  	<li onClick="location.href='/mypage/update'"> 개인정보수정 </li>
			  	<li onClick="location.href='/logout'"> 로그아웃</li>
		  	</ul>
		</div>
	</c:if>
</div>	

<!-- <div class="wrap"> -->


<!-- <div class="container"> -->

