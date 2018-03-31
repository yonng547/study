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
    <header class="masthead" style="background-image: url('/study/resources/img/contact-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="page-heading">
              <h1>Modify Page</h1>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <p>Please Modify!</p>
<!--           <form name="sentMessage" id="contactForm" novalidate> -->
          <form role="form" action="modifyPage" method="post">
          						
          	<input type='hidden' name='page' value="${cri.page}"> 
          	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					
           <div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>BNO</label>
                <input type="text" class="form-control" value="${boardVO.bno}" name='bno' required data-validation-required-message="Please enter a title." readonly="readonly">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            						
            <div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>Title</label>
                <input type="text" class="form-control" value="${boardVO.title}" name='title' required data-validation-required-message="Please enter a title.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
<!--             <div class="control-group"> -->
<!--               <div class="form-group floating-label-form-group controls"> -->
<!--                 <label>Email Address</label> -->
<!--                 <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address."> -->
<!--                 <p class="help-block text-danger"></p> -->
<!--               </div> -->
<!--             </div> -->

            <div class="control-group">
              <div class="form-group col-xs-12 floating-label-form-group controls">
                <label>Writer</label>
                <input type="text" class="form-control" value="${boardVO.writer}" name='writer' required data-validation-required-message="Please enter your name.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <div class="form-group">
              <div class="form-group floating-label-form-group controls">
                <label>Content</label>
                <textarea rows="5" class="form-control" name="content" required data-validation-required-message="Please enter a Content.">${boardVO.content}</textarea>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <br>
<!--             <div id="success"></div> -->
            <div class="form-group">
              <button type="submit" class="btn btn-primary" id="modifyButton">SAVE</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <hr>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="/study/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/study/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/study/resources/js/jqBootstrapValidation.js"></script>
    <script src="/study/resources/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/study/resources/js/clean-blog.min.js"></script>


<script>

	$(document).ready(function() {
		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-primary").on("click", function() {
			formObj.submit();});
	});
	
</script>
				
</body>
</html>