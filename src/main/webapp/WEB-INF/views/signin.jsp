<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/includes/header.jsp" />

<aside class="col-lg-4 col-md-6 m-auto">
    <div class="card">
        <div class="card-body">
            <h4 class="mb-4">Sign in</h4>
            <form>
                <div class="mb-3">
                    <input type="text" name="login" class="form-control" placeholder="Username">
                </div>
                <div class="mb-3 input-group">
                    <input type="password" name="password" class="form-control" placeholder="Password">
                    <button type="button" class="btn btn-light">
                        <i class="text-muted fa fa-eye"></i>
                    </button>
                </div>
                <div class="mb-3">
                    <label class="form-check">
                        <input class="form-check-input" type="checkbox" value="" checked="">
                        <span class="form-check-label"> Remember </span>
                    </label>
                </div>
                <div class="mb-4">
                    <button class="btn w-100 btn-primary" type="button"> Sign in </button>
                </div>
                <p class="mb-1 text-center">Don’t have an account?
                    <a href="${pageContext.request.contextPath}/signup">Sign Up</a>
                </p>
            </form>
        </div>
    </div>
</aside>

<jsp:include page="/WEB-INF/includes/footer.jsp" />
