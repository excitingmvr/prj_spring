<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<div style="padding-left: 50px;">
<form>
	<br><br>
	I D<br>
	<input type="text" id="ifmmId" name="ifmmId"/><br><br>
	Password<br>
	<input type="text" id="ifmmPassword" name="ifmmPassword"/><br><br>
	<button type="button" class="btn btn-primary" id="btnLogin">Log In</button>
</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<script src="/resources/js/validation.js"></script>

<script type="text/javascript">

$("#btnLogin").on("click", function(){
	
	if(validation() == false) return false;
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/loginProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmId" : $("#ifmmId").val(),
			"ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				alert(response.rtMember.ifmmName);
				location.href = "/";
			} else {
				alert("그런 회원 없습니다.");
				$("#ifmmPassword").val("");
				$("#ifmmPassword").focus();
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});


validation = function() {
	// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
	// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
}

</script>	