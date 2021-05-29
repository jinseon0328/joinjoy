<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${members}" var="m">
    <c:forEach items="${clubMembers}" var="cm">
        <c:if test="${m.no == cm.no}">
            ${cm.name}
            ${cm.tel}
            <c:if test="${not empty cm.photo}">
                <c:set var="photoUrl">../upload/${cm.photo}_30x30.jpg</c:set>
            </c:if>
            <c:if test="${empty cm.photo}">
                <c:set var="photoUrl">../images/person_30x30.jpg</c:set>
            </c:if>
            <img src='${photoUrl}'>
            &nbsp<tr> | </tr>
        </c:if>
    </c:forEach>
</c:forEach>