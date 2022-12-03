<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${page_title}</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/ui.css">
    <link rel="stylesheet" type="text/css" href="../css/responsive.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<div class="wrapper">
    <header class="section-header">
        <section class="header-main border-bottom">
            <div class="container">
                <div class="row gy-3 align-items-center">
                    <div class="col-lg-2 col-sm-4 col-4">
                        <a href="${pageContext.request.contextPath}/" class="navbar-brand">
                            <img class="logo" height="40" src="../img/logo.svg" alt="">
                        </a>
                    </div>
                    <div class="order-lg-last col-lg-5 col-sm-8 col-8">
                        <div class="float-end">
                            <a href="${pageContext.request.contextPath}/signin" class="btn btn-light">
                                <i class="fa fa-user"></i>  <span class="ms-1 d-none d-sm-inline-block">Sign in</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/wishlist" class="btn btn-light">
                                <i class="fa fa-heart"></i>  <span class="ms-1 d-none d-sm-inline-block">Wishlist</span>
                            </a>
                            <a href="${pageContext.request.contextPath}/cart" class="btn btn-light">
                                <i class="fa fa-shopping-cart"></i> <span class="ms-1">My cart </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12">
                        <form id="search-form" class="m-0">
                            <div class="input-group">
                                <input type="search" name="query" class="form-control" style="width:55%" placeholder="Search">
                                <button class="btn btn-primary">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </header>

    <div class="main">
        <div class="container">