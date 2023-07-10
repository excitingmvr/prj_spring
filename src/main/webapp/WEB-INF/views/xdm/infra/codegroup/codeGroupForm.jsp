<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

11: <c:out value="${param.ifcgSeq }"/>

<form name="form" method="post">

<%@include file="includeElementId.jsp"%>
	
	<input type="text" name="ifcgName" id="ifcgName" value="<c:out value="${item.ifcgName }"/>">
	
<c:choose>
	<c:when test="${empty item.ifcgSeq }">
		<button type="button" class="btn btn-primary" id="btnInst">save</button>
	</c:when>
	<c:otherwise>
		<button type="button" class="btn btn-danger" id="btnDelete">Delete</button>
		<button type="button" class="btn btn-danger" id="btnUelete">Uelete</button>
		<button type="button" class="btn btn-primary" id="btnUpdt">save</button>
	</c:otherwise>	
</c:choose>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<script src="/resources/js/validation.js"></script>

<script type="text/javascript">

	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	
	validationUpdt = function() {
		if(check($.trim($("#ifcgName").val())) == false) return false;
	}
	
	
	$("#btnInst").on("click", function(){
		if (validationInst() == false) return false;		/* **** */
		$("form[name=form]").attr("action", "/codeGroupInst").submit();
	});
	
	
	$("#btnUpdt").on("click", function(){
		if (validationUpdt() == false) return false;		/* **** */
		$("form[name=form]").attr("action", "/codeGroupUpdt").submit();
	});
	
	
	$("#btnDelete").on("click", function(){
	 	$("form[name=form]").attr("action", "/codeGroupDele").submit();
	});
	
	
	$("#btnUelete").on("click", function(){
	 	$("form[name=form]").attr("action", "/codeGroupUele").submit();
	});

</script>	
