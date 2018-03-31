<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/views/common/head.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/common/navigation.jsp" />
    <!-- Page Header -->
    <header class="masthead" style="background-image: url('/study/resources/img/home-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>Welcome, </h1>
              <h1> My Blog! </h1>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          	<c:forEach items="${list}" var="boardVO">
          	<div class="post-preview">
              	<tr>
              		<a href="/study/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${boardVO.bno}">
              		<h2 class="post-title">
              			<td>${boardVO.title}</td>
              		</h2>
              		</a>
				</tr>
				<p class="post-meta">Posted by ${boardVO.regdate}</p>
			</div>
			<hr>
			</c:forEach>
          <!-- Pager -->
          <div class="clearfix">
          <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	      	<a class="btn btn-primary float-right" href="${pageMaker.cri.page+1}">Older Posts</a>
		  </c:if>
          </div>
<!-- 			<div class="text-center"> -->
<!-- 				<ul class="pagination"> -->
<%-- 					<c:if test="${pageMaker.prev}"> --%>
<%-- 						<li><a href="${pageMaker.startPage - 1}">&laquo;</a></li> --%>
<%-- 					</c:if> --%>
<%-- 					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx"> --%>
<%-- 						<li <c:out value="${pageMaker.cri.page == idx ? 'class = active':''}"/>> --%>
<%-- 							<a href="${idx}">${idx}</a> --%>
<!-- 						</li> -->
<%-- 					</c:forEach> --%>
<%-- 					<c:if test="${pageMaker.next && pageMaker.endPage > 0}"> --%>
<%-- 						<li><a href="${pageMaker.endPage +1}">&raquo;</a></li> --%>
<%-- 					</c:if> --%>
<!-- 				</ul> -->
<!-- 			</div> -->

        </div>
      </div>
    </div>

    <hr>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="/study/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/study/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/study/resources/js/clean-blog.min.js"></script>

<form id="jobForm">
  <input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
</form>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
// 	$(".pagination li a").on("click", function(event){
		
// 		event.preventDefault(); 
		
// 		var targetPage = $(this).attr("href");
		
// 		var jobForm = $("#jobForm");
// 		jobForm.find("[name='page']").val(targetPage);
// 		jobForm.attr("action","/study/listPage").attr("method", "get");
// 		jobForm.submit();
// 	});
	
	$(".clearfix a").on("click", function(event){
		
		event.preventDefault(); 
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action","/study/listPage").attr("method", "get");
		jobForm.submit();
	});
	
</script>

</body>
</html>