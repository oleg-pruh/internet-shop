<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="/WEB-INF/includes/header.jsp" />


<section class="padding-y">
    <div class="container">
        <div class="row">
            <aside class="col-lg-3">
                <button class="btn btn-outline-secondary mb-3 w-100  d-lg-none" data-bs-toggle="collapse" data-bs-target="#aside_filter">Show filter</button>
                <!-- ===== Card for sidebar filter ===== -->
                <div id="aside_filter" class="collapse card d-lg-block mb-5">
                    <article class="filter-group">
                        <header class="card-header">
                            <a href="#" class="title" data-bs-toggle="collapse" data-bs-target="#collapse_aside1">
                                <i class="icon-control fa fa-chevron-down"></i>
                                Related items
                            </a>
                        </header>
                        <div class="collapse show" id="collapse_aside1">
                            <div class="card-body">
                                <ul class="list-menu">
                                    <li><a href="#">Electronics </a></li>
                                    <li><a href="#">Home items  </a></li>
                                    <li><a href="#">Books, Magazines </a></li>
                                    <li><a href="#">Men's clothing </a></li>
                                    <li><a href="#">Interiors items </a></li>
                                    <li><a href="#">Underwears </a></li>
                                    <li><a href="#">Shoes for men </a></li>
                                    <li><a href="#">Accessories </a></li>
                                </ul>
                            </div>
                            <!-- card-body.// -->
                        </div>
                    </article>
                    <!-- filter-group // -->
                    <article class="filter-group">
                        <header class="card-header">
                            <a href="#" class="title" data-bs-toggle="collapse" data-bs-target="#collapse_aside_brands">
                                <i class="icon-control fa fa-chevron-down"></i>
                                Brands
                            </a>
                        </header>
                        <div class="collapse show" id="collapse_aside_brands">
                            <div class="card-body">
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label"> Mercedes </span>
                                    <b class="badge rounded-pill bg-gray-dark float-end">120</b>
                                </label> <!-- form-check end.// -->
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label"> Toyota </span>
                                    <b class="badge rounded-pill bg-gray-dark float-end">15</b>
                                </label> <!-- form-check end.// -->
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label"> Mitsubishi </span>
                                    <b class="badge rounded-pill bg-gray-dark float-end">35</b>
                                </label> <!-- form-check end.// -->
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label"> Nissan </span>
                                    <b class="badge rounded-pill bg-gray-dark float-end">89</b>
                                </label> <!-- form-check end.// -->
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="">
                                    <span class="form-check-label"> Honda </span>
                                    <b class="badge rounded-pill bg-gray-dark float-end">30</b>
                                </label>
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="">
                                    <span class="form-check-label"> Honda accord </span>
                                    <b class="badge rounded-pill bg-gray-dark float-end">30</b>
                                </label>
                            </div>
                        </div>
                    </article>
                    <article class="filter-group">
                        <header class="card-header">
                            <a href="#" class="title" data-bs-toggle="collapse" data-bs-target="#collapse_aside2">
                                <i class="icon-control fa fa-chevron-down"></i>
                                Price
                            </a>
                        </header>
                        <div class="collapse show" id="collapse_aside2">
                            <div class="card-body">
                                <input type="range" class="form-range" min="0" max="100">
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <label for="min" class="form-label">Min</label>
                                        <input class="form-control" id="min" placeholder="$0" type="number">
                                    </div>
                                    <div class="col-6">
                                        <label for="max" class="form-label">Max</label>
                                        <input class="form-control" id="max" placeholder="$1,0000" type="number">
                                    </div>
                                </div>
                                <button class="btn btn-light w-100" type="button">Apply</button>
                            </div>
                        </div>
                    </article>
                    <article class="filter-group">
                        <header class="card-header">
                            <a href="#" class="title" data-bs-toggle="collapse" data-bs-target="#collapse_aside3">
                                <i class="icon-control fa fa-chevron-down"></i>
                                Size
                            </a>
                        </header>
                        <div class="collapse show" id="collapse_aside3">
                            <div class="card-body">
                                <label class="checkbox-btn">
                                    <input type="checkbox">
                                    <span class="btn btn-light"> XS </span>
                                </label>
                                <label class="checkbox-btn">
                                    <input type="checkbox">
                                    <span class="btn btn-light"> SM </span>
                                </label>
                                <label class="checkbox-btn">
                                    <input type="checkbox">
                                    <span class="btn btn-light"> LG </span>
                                </label>
                                <label class="checkbox-btn">
                                    <input type="checkbox">
                                    <span class="btn btn-light"> XXL </span>
                                </label>
                            </div>
                        </div>
                    </article>
                    <article class="filter-group">
                        <header class="card-header">
                            <a href="#" class="title" data-bs-toggle="collapse" data-bs-target="#collapse_aside4">
                                <i class="icon-control fa fa-chevron-down"></i> Ratings
                            </a>
                        </header>
                        <div class="collapse show" id="collapse_aside4">
                            <div class="card-body">
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label">
                              <ul class="rating-stars">
                                 <li class="stars-active" style="width: 100%;">
                                    <img src="images/misc/stars-active.svg" alt="">
                                 </li>
                                 <li> <img src="images/misc/starts-disable.svg" alt="">  </li>
                              </ul>
                           </span>
                                </label>
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label">
                              <ul class="rating-stars">
                                 <li class="stars-active" style="width: 80%;">
                                    <img src="images/misc/stars-active.svg" alt="">
                                 </li>
                                 <li> <img src="images/misc/starts-disable.svg" alt="">  </li>
                              </ul>
                           </span>
                                </label>
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label">
                              <ul class="rating-stars">
                                 <li class="stars-active" style="width: 60%;">
                                    <img src="images/misc/stars-active.svg" alt="">
                                 </li>
                                 <li> <img src="images/misc/starts-disable.svg" alt="">  </li>
                              </ul>
                           </span>
                                </label>
                                <label class="form-check mb-2">
                                    <input class="form-check-input" type="checkbox" value="" checked="">
                                    <span class="form-check-label">
                              <ul class="rating-stars">
                                 <li class="stars-active" style="width: 40%;">
                                    <img src="images/misc/stars-active.svg" alt="">
                                 </li>
                                 <li> <img src="images/misc/starts-disable.svg" alt="">  </li>
                              </ul>
                           </span>
                                </label>
                            </div>
                        </div>
                    </article>
                </div>
            </aside>
            <main class="col-lg-9">
                <header class="d-sm-flex align-items-center border-bottom mb-4 pb-3">
                    <strong class="d-block py-2">${products.size()} Items found </strong>
                    <div class="ms-auto">
                        <select class="form-select d-inline-block w-auto">
                            <option value="0">Best match</option>
                            <option value="1">Recommended</option>
                            <option value="2">High rated</option>
                            <option value="3">Randomly</option>
                        </select>
                        <div class="btn-group">
                            <a href="#" class="btn btn-light" data-bs-toggle="tooltip" title="" data-bs-original-title="List view">
                                <i class="fa fa-bars"></i>
                            </a>
                            <a href="#" class="btn btn-light active" data-bs-toggle="tooltip" title="" data-bs-original-title="Grid view">
                                <i class="fa fa-th"></i>
                            </a>
                        </div>
                    </div>
                </header>
                <c:forEach items="${products}" var="product">
                    <article class="card card-product-list">
                        <div class="row g-0">
                            <aside class="col-xl-3 col-md-4">
                                <a href="#" class="img-wrap">
                                    <img src="/img/${product.image}">
                                </a>
                            </aside>
                            <div class="col-xl-6 col-md-5 col-sm-7">
                                <div class="card-body">
                                    <a href="/${product.id}" class="stretched-link"></a>
                                    <a href="#" class="title h5"> ${product.title} </a>
                                    <p class="over_link">${product.description}</p>
                                </div>
                            </div>
                            <aside class="col-xl-3 col-md-3 col-sm-5">
                                <div class="info-aside">
                                    <div class="price-wrap">
                                        <span class="price h5 over_link"> $${product.price} </span>
                                    </div>
                                    <br>
                                    <div class="mb-3">
                                        <a href="/cart/add/${product.id}" class="btn btn-primary over_link"> Add to cart </a>
                                        <a href="/wishlist/add/${product.id}" class="btn btn-light btn-icon over_link">  <i class="fa fa-heart"></i>  </a>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </article>
                </c:forEach>

                <hr>
                <footer class="d-flex mt-4">
                    <div>
                        <a href="javascript: history.back()" class="btn btn-light"> ?? Go back</a>
                    </div>
                    <nav class="ms-3">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active" aria-current="page">
                                <span class="page-link">2</span>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </footer>
            </main>
        </div>
    </div>
</section>



<jsp:include page="/WEB-INF/includes/footer.jsp" />
