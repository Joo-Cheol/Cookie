<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<!-- Custom fonts for this template-->
<link href="a00_com/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="a00_com/css/sb-admin-2.min.css" rel="stylesheet">
<script src="a00_com/vendor/jquery/jquery.min.js"></script>
<script src="a00_com/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="a00_com/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="a00_com/js/sb-admin-2.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<style>
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
</style>

<script type="text/javascript">
	var msg = "${msg}"
	if(msg!=""){
		alert(msg)
		if(msg.indexOf("삭제성공")>=0){
			location.href='productList'
		}
		
	}

	$(document).ready(function(){
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까")){
				$("form").attr("action","updateProdt");
				$("form").submit();
			}
		})
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까")){
				$("form").attr("action","deleteProdt");
				$("form").submit();
			}
		})		
	});
	function download(fname){
		if(confirm(fname+" 파일을 다운로드 하시겠습니까?"))
			location.href="/download?filename="+fname
	}
</script>
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<jsp:include page="/sidebar" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<jsp:include page="/headerCookie" />
				<!-- End of Topbar -->
				<!-- Begin Page Content -->
				<div class="container-fluid">
<div class="jumbotron text-center">
  <h2>제품정보상세</h2>
</div>
<div class="container">
	<form method="post">
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">제품코드</span>
		</div>
		<input name="no" readonly class="form-control"  value="${product.no}" readonly/>	
	</div>	
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">제품명</span>
		</div>
		<input name="pname" class="form-control"   value="${product.pname}"   />	
	</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">단위</span>
		</div>
		<input name="unit" class="form-control"   value="${product.unit}"   />	
	</div>		
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">가격</span>
		</div>
		<input name="price" type="number" class="form-control"   value="${product.price}" />	
	</div>
	<div class="input-group mb-3">	
		<div class="input-group-prepend ">
			<span class="input-group-text  justify-content-center">첨부파일</span>
		</div>
		<c:forEach var="fname" items="${product.flist}">
			<span ondblclick="download('${fname}')">${fname}</span>,&nbsp;&nbsp;&nbsp;
		</c:forEach>
	</div>			
	<div style="text-align:right;">
			<c:if test="${sessionScope.auth == 2 && sessionScope.deptno == 30}">
           		<input type="button" id="uptBtn" class="btn btn-primary" value="수정" />
				<input type="button" id="delBtn"  class="btn btn-warning" value="삭제" />
        	</c:if>
			<input type="button" class="btn btn-info" 
				onclick="location.href='productList'" 
				value="조회리스트" id="mainBtn"/>
	</div>	
	</form>	
</div>
<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">로그인 화면으로 돌아갑니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">아니오</button>
					<button class="btn btn-primary" type="button" onclick="logout()">예</button>
				</div>
			</div>
		</div>
	</div></div></div></div></div>



</body>
</html>