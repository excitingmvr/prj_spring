<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:choose>
	<c:when test="${empty item.ifcgSeq }">
		<input type="text" id="ifcgSeq" disabled="disabled" placeholder="Auto increment">
	</c:when>
	<c:otherwise>
		<input type="text" name="ifcgSeq" id="ifcgSeq" readonly value="<c:out value="${item.ifcgSeq }"/>">
	</c:otherwise>
</c:choose>