<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
codeGroupList.jsp

<!-- <form name="formList"> -->
<form name="formList" method="post">
	<select name="shOption">
	    <option value="">--선택하세요--</option>
	    <option value="1">Dog</option>
	    <option value="2">Cat</option>
	</select>
	
	<input type="text" name="shKeyword">
	
	<button type="button" class="btn btn-primary" id="btn">Search</button>
</form>


<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise><%-- ${list} 자바에서 넘겨준 객체 이름 --%> <!-- var="list" jstl 블럭에서 사용할 변수 이름 -->
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.ifcgSeq }"></c:out>
			<a href="codeGroupForm?ifcgSeq=<c:out value="${list.ifcgSeq }"/>"><c:out value="${list.ifcgName }"></c:out></a><br>
		</c:forEach>
	</c:otherwise>
</c:choose>	 

<button type="button" class="btn btn-primary" id="btnAdd">Add</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<script type="text/javascript">

// var form = $("form[name=formList]");

$("#btn").on("click", function(){
	
// 	$("form[name=formList]").attr("method","get");
	$("form[name=formList]").attr("action", "/codeGroupList").submit();
	
});


$("#btnAdd").on("click", function(){
	location.href = "/codeGroupForm";	
});

</script>	