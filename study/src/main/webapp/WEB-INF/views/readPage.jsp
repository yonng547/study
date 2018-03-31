<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/views/common/head.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/common/navigation.jsp" />

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('/study/resources/img/post-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="post-heading">
              <h1>${boardVO.title}</h1>
              <br>
              <span class="meta">Posted by ${boardVO.writer} at ${boardVO.regdate}</span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Post Content -->
    <article>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            ${boardVO.content}
          </div>
        </div>
        <hr>
        <div class="form-group">
        	<button type="submit" class="btn btn-warning" id="modifyButton">Modify</button>
        	<button type="submit" class="btn btn-danger" id="deleteButton">Delete</button>
      	</div>
      </div>
      

    </article>

    <hr>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="/study/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/study/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/study/resources/js/clean-blog.min.js"></script>

	<form role="form" action="modifyPage" method="post">
    	<input type='hidden' name='bno' value ="${boardVO.bno}">
    	<input type='hidden' name='page' value ="${cri.page}">
    	<input type='hidden' name='perPageNum' value ="${cri.perPageNum}">
	</form> 
 
<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/study/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/study/removePage");
		formObj.submit();
	});
	
// 	$(".btn-primary").on("click", function(){
// 		formObj.attr("method", "get");
// 		formObj.attr("action", "/board/listPage");
// 		formObj.submit();
// 	});
	
});
</script>

</body>
</html>