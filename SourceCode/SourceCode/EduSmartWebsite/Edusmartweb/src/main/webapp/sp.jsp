	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:forEach var="listValue" items="${academyProfilePostList}">
				<li>${listValue}</li>
			</c:forEach>