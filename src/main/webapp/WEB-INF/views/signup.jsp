<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/includes/header.jsp" />

<aside class="col-lg-6 m-auto">
    <div class="card mb-4">
        <article class="card-body">
            <h4 class="mb-4">Create account</h4>
            <form>
                <div class="row gx-3">
                    <div class="col mb-4"> <label class="form-label">First name</label> <input type="text" class="form-control" placeholder=""> </div>
                    <div class="col mb-4"> <label class="form-label">Last name</label> <input type="text" class="form-control" placeholder=""> </div>
                </div>
                <div class="row gx-3">
                    <div class="col mb-3"> <label class="form-label">City</label> <input type="text" class="form-control"> </div>
                    <div class="col mb-3">
                        <label class="form-label">Country</label>
                        <select class="form-select">
                            <option value="none">Choose...</option>
                            <option value="uz">Uzbekistan</option>
                            <option value="ru">Russia</option>
                            <option selected="">United States</option>
                            <option value="in">India</option>
                            <option value="af">Afganistan</option>
                        </select>
                    </div>
                    <div class="col-12 mb-3"> <label class="form-label">Address</label> <input type="text" class="form-control" placeholder=""> </div>
                    <div class="col-6 mb-3"> <label class="form-label">Email</label> <input type="email" class="form-control" placeholder=""> <small class="form-text">We'll never share your email</small> </div>
                    <div class="col-6 mb-3">
                        <label class="form-label">Phone</label>
                        <div class="input-group">
                            <select class="form-select" style="max-width: 120px">
                                <option value="us">US +1 </option>
                                <option value="uz">UZ +998</option>
                                <option value="ru">RU +72 </option>
                            </select>
                            <input type="email" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="col mb-3"> <label class="form-label">Create password</label> <input class="form-control" type="password"> </div>
                    <div class="col mb-3"> <label class="form-label">Repeat password</label> <input class="form-control" type="password"> </div>
                </div>
                <div class="row mt-3 mb-4 align-items-center">
                    <div class="col-auto">
                        <button class="btn btn-primary" type="button">Register now</button>
                    </div>
                </div>
            </form>
            <hr>
            <p class="mb-0">Already have an account? <a href="${pageContext.request.contextPath}/signin">Sign in</a></p>
        </article>
    </div>
</aside>

<jsp:include page="/WEB-INF/includes/footer.jsp" />