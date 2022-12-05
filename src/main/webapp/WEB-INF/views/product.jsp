<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/includes/header.jsp" />
<div class="row">
    <aside class="col-lg-6">
        <article class="gallery-wrap">
            <div class="img-big-wrap img-thumbnail">
                <a href="#">
                    <img height="520" src="/img/${product.image}">
                </a>
            </div>
        </article>
    </aside>
    <div class="col-lg-6">
        <article class="ps-lg-3">
            <h4 class="title text-dark">${product.title}</h4>
            <div class="mb-3">
                <var class="price h5">$${product.price}</var>
            </div>
            <p>${product.description}</p>

            <hr>

            <a href="/cart/add/${product.id}" class="btn btn-primary">
                <i class="me-2 fa fa-shopping-basket"></i> Add to cart
            </a>
            <a href="/wishlist/add/${product.id}" class="btn btn-light">
                <i class="me-2 fa fa-heart"></i> Save
            </a>
        </article>
    </div>
</div>
<jsp:include page="/WEB-INF/includes/footer.jsp" />
