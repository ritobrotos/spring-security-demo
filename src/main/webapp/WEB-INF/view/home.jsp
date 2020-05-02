<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <body>
        <h2>Hello From Home Page!!!</h2>

        <hr>

        <p>
        	User: <security:authentication property="principal.username" />
        	<br>
        	Role(s): <security:authentication property="principal.authorities" />
        </p>

        <hr>

        <security:authorize access="hasRole('MANAGER')">
	    	<p>
	    		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
	    	</p>

	        <hr>
    	</security:authorize>

        <security:authorize access="hasRole('ADMIN')">
	    	<p>
	    		<a href="${pageContext.request.contextPath}/systems">Admin Meeting</a>
	    	</p>
	        <hr>
	    </security:authorize>


        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        	<input type="submit" value="logout" />
    	</form:form>
    </body>
</html>