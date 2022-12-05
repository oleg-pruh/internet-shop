<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/includes/header.jsp" />

<div class="row">
  <div class="col-lg-9">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title mb-4">Shopping cart</h5>
        <c:forEach var="product" items="${products}">
          <article class="row gy-3 mb-4">
            <div class="col-lg-6">
              <div class="itemside me-lg-5">
                <div class="aside">
                  <img src="/img/${product.image}" class="img-sm border rounded">
                </div>
                <div class="info">
                  <a href="/${product.id}" class="title mb-1">${product.title}</a>
                </div>
              </div>
            </div>
            <div class="col-auto">
              <div class="input-group input-spinner">
                <button class="btn btn-light" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999" viewBox="0 0 24 24">
                    <path d="M19 13H5v-2h14v2z"></path>
                  </svg>
                </button>
                <input type="text" class="form-control" value="1">
                <button class="btn btn-light" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999" viewBox="0 0 24 24">
                    <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"></path>
                  </svg>
                </button>
              </div>
            </div>
            <div class="col-lg-2 col-sm-4 col-6">
              <div class="price-wrap lh-sm">
                <var class="price h6">$</var>
                <br>
                <small class="text-muted"> $${product.price} / per item </small>
              </div>
            </div>
            <div class="col-lg col-sm-4">
              <div class="float-lg-end">
                <a href="/wishlist/add/${product.id}" class="btn btn-light btn-icon">
                  <i class="fa fa-heart"></i>
                </a>
                <a href="/cart/remove/${product.id}" class="btn btn-light text-danger"> Remove</a>
              </div>
            </div>
          </article>
        </c:forEach>
      </div>
    </div>
  </div>
  <aside class="col-lg-3">
    <div class="card">
      <div class="card-body">
        <dl class="dlist-align">
          <dt>Total price:</dt>
          <dd class="text-end"> $1403.97</dd>
        </dl>
        <dl class="dlist-align">
          <dt>Discount:</dt>
          <dd class="text-end text-success"> - $60.00 </dd>
        </dl>
        <dl class="dlist-align">
          <dt>TAX:</dt>
          <dd class="text-end text-danger"> + $14.00 </dd>
        </dl>
        <hr>
        <dl class="dlist-align">
          <dt>Total:</dt>
          <dd class="text-end text-dark h5"> $1357.97 </dd>
        </dl>
        <div class="d-grid gap-2 my-3"> <a href="#" class="btn btn-primary w-100"> Make Purchase </a> <a href="#" class="btn btn-light w-100"> Back to shop </a> </div>
      </div>
    </div>
  </aside>
</div>

<jsp:include page="/WEB-INF/includes/footer.jsp" />