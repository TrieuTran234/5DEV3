<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/SideNavigationBar.css">
    <link rel="stylesheet" href="/client/css/REGISTRATION.css">
    <link rel="stylesheet" href="/client/css/nicepage.css">
    <script class="u-script" type="text/javascript" src="/client/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/client/js/nicepage.js" defer=""></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
      <!-- Css Styles -->
     <link rel="stylesheet" href="/client/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/client/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/client/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/client/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/client/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/client/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/client/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/client/css/style.css" type="text/css">
</head>
  <body >
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">Sign in</a>
                <a href="#">FAQs</a>
            </div>
            <div class="offcanvas__top__hover">
                <span>Usd <i class="arrow_carrot-down"></i></span>
                <ul>
                    <li>USD</li>
                    <li>EUR</li>
                    <li>USD</li>
                </ul>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="/client/img/icon/search.png" alt=""></a>
            <a href="#"><img src="/client/img/icon/heart.png" alt=""></a>
            <a href="#"><img src="/client/img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>Free shipping, 30-day return or refund guarantee.</p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->
        <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                            <p>Free shipping, 30-day return or refund guarantee.</p>
                        </div>
                    </div>
                   <div class="col-lg-6 col-md-5">
						<div class="header__top__right">
							<div class="header__top__links">
								<a href="/account/login">Sign in</a> <a href="#">FAQS</a><a href="/admin/product/list">Admin</a>
							</div>
							<div class="header__top__hover">
								<span>${name }</span>
								<ul>
									<li ><a href="/account/logout" class="text-dark">Sign out</a></li>
									<li ><a href="/account/register/index" class="text-dark">Register</a></li>
									<li><a href="/account/change/index" class="text-dark">Change password</a></li>
									<li><a href="/account/forgot/index" class="text-dark">Forgot password</a></li>
									<li><a href="/account/editprofile/index" class="text-dark">Edit profile</a></li>
								</ul>
							</div>
						</div>
					</div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="/client/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                      <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="/index">Home</a></li>
                            <li class="active"><a href="/client/product">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="/about">About Us</a></li>
                                  
                                    <li><a href="/client/shoppingcart/index">Shopping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="/blog-details">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="/blog">Blog</a></li>
                            <li><a href="/contact">Contacts</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="/client/img/icon/search.png" alt=""></a>
                        <a href="#"><img src="/client/img/icon/heart.png" alt=""></a>
                        <a href="/client/shoppingcart/index"><img src="/client/img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">$0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->
    
         <section class="u-align-center u-clearfix u-expanded-width-xl u-image u-shading u-section-1 " id="carousel_1f21" data-image-width="1920" data-image-height="1052"  style="background-image: url('/client/img/staff.png');">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-shape-rectangle u-size-27-lg u-size-27-md u-size-27-sm u-size-27-xs u-size-30-xl u-layout-cell-1" >
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <h2 class="u-text u-text-1">Đăng ký tài khoản<br>dễ dàng, nhanh chóng<br>tiện lợi !
                  </h2>
                  <p class="u-text u-text-2 u-text-white">
                    <span style="font-weight: 700;">Address:</span>&nbsp;Ho Chi Minh , Vietnam<br>
                    <span style="font-weight: 700;">Phone:</span>&nbsp;+84 62463995<br>
                    <span style="font-weight: 700;">Hours:</span> 6:00 am – 2:00 am<br>
                  </p>
                  <div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
                    <a class="u-social-url" target="_blank" href="https://www.facebook.com/profile.php?id=100010413100285"><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-text-palette-3-light-1 u-icon-1">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-87ce"></use></svg>
                    <svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-87ce" class="u-svg-content"><path d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2 c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg>
                  </span>
                    </a>
                    <a class="u-social-url" target="_blank" href="https://twitter.com/twitter.com"><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-text-palette-3-light-1 u-icon-2">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-88a8"></use></svg>
                    <svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-88a8" class="u-svg-content"><path d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2 c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7 c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2 c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5 c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg>
                  </span>
                    </a>
                    <a class="u-social-url" target="_blank" href="https://www.instagram.com/instagram.com"><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-text-palette-3-light-1 u-icon-3">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-694e"></use></svg>
                    <svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-694e" class="u-svg-content"><path d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path><path d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path><path d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7 V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7 c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg>
                  </span>
                    </a>
                    <a class="u-social-url" target="_blank" href="https://linkedin.com/in/linkedin.com"><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-text-palette-3-light-1 u-icon-4">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1f32"></use></svg>
                    <svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-1f32" class="u-svg-content"><path d="M33.8,96.8H14.5v-58h19.3V96.8z M24.1,30.9L24.1,30.9c-6.6,0-10.8-4.5-10.8-10.1c0-5.8,4.3-10.1,10.9-10.1 S34.9,15,35.1,20.8C35.1,26.4,30.8,30.9,24.1,30.9z M103.3,96.8H84.1v-31c0-7.8-2.7-13.1-9.8-13.1c-5.3,0-8.5,3.6-9.9,7.1 c-0.6,1.3-0.6,3-0.6,4.8V97H44.5c0,0,0.3-52.6,0-58h19.3v8.2c2.6-3.9,7.2-9.6,17.4-9.6c12.7,0,22.2,8.4,22.2,26.1V96.8z"></path></svg>
                  </span>
                    </a>
                    <a class="u-social-url" target="_blank" href="https://pinterest.com/pinterest.com"><span class="u-icon u-icon-circle u-social-icon u-social-pinterest u-text-palette-3-light-1 u-icon-5">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9623"></use></svg>
                    <svg x="0px" y="0px" viewBox="0 0 112 112" id="svg-9623" class="u-svg-content"><path d="M61.9,79.8c-5.5-0.3-7.8-3.1-12-5.8c-2.3,12.4-5.4,24.3-13.8,30.5c-2.6-18.7,3.8-32.8,6.9-47.7 c-5.1-8.7,0.7-26.2,11.5-21.9c13.5,5.4-11.6,32.3,5.1,35.7c17.6,3.5,24.7-30.5,13.8-41.4c-15.7-16.1-45.7-0.5-42,22.3 c0.9,5.6,6.7,7.2,2.3,15c-10.1-2.2-13-10.2-12.7-20.7c0.6-17.3,15.5-29.3,30.5-31.1c19-2.2,36.8,6.9,39.2,24.7 C93.4,59.5,82.3,81.3,61.9,79.8z"></path></svg>
                  </span>
                    </a>
                  </div>
                  <p class="u-text u-text-3">Image from <a href="https://www.freepik.com/photos/business" class="u-active-none u-border-1 u-border-white u-btn u-button-link u-button-style u-hover-none u-none u-text-body-alt-color u-btn-1">Freepik</a>
                  </p>
                </div>
              </div>
              <div class="u-align-left u-container-style  u-layout-cell u-shape-rectangle u-size-30-xl u-size-33-lg u-size-33-md u-size-33-sm u-size-33-xs u-layout-cell-2" style="background-color: rgb(245, 176, 184)">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <div class="u-form u-form-1">
                    <form:form action="/account/register" modelAttribute="item" method="POST" class="" enctype="multipart/form-data" style="padding: 0px;width: 450px" source="custom" name="form">
                     
                      <div class="u-form-group u-form-name">
                        <label for="name-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true" >USER ID</label>
                        <form:input type="text" path="id" placeholder="User Id"  id="name-3b9a" name="id" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1" required="true"/>
                      </div>
                      <br>
                      <div class="u-form-group u-form-name">
                        <label for="name-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Full Name</label>
                        <form:input type="text" path="fullname" placeholder="Full Name"  id="name-3b9a" name="fullname" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1" required="true"/>
                      </div>
                      <br>
                      <div class="u-form-email u-form-group">
                        <label for="email-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Email</label>
                        <form:input type="email" path="email" placeholder="Email"  id="email-3b9a" name="email" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-2" required="true"/>
                      </div><br>
                       <div class="u-form-group u-form-name">
                        
                        <form:input type="number" path="phone" placeholder="Phone" id="name-3b9a" name="phone"  class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1" required="true"/>
                      </div><br>
                       <div class="u-form-group u-form-name">
                        
                        <form:input path="dateofBirth" type="date" placeholder="Date Of Birth" id="name-3b9a"  name="dateofbirth" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1" required="true"/>
                      </div><br>
                       <div class="u-form-group u-form-name">
						<input type="text" name="image1" value="${item.image}" readonly="true" style="border: none;" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1">                       
                        <input type="file" placeholder="Image" id="name-3b9a" name="photo" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1" required="">
                      </div>
                      <br>
                       <div class="u-form-email u-form-group u-form-group-4">
                  		
                  		<form:textarea path="address" type=""  id="text-014f" name="address" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" placeholder="Enter your address" required="true" />
                		</div> <br>
                      <div class="u-form-group u-form-group-3">
                        <label for="text-160a" class="u-form-control-hidden u-label"></label>
                        <input type="password" id="text-160a" name="password" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-3" required="required" placeholder="Password">
                      </div>
                      <br>
                      <div class="u-form-group">
                        <label for="message-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Message</label>
                        <input placeholder="Confirm password"  rows="4" cols="50" id="message-3b9a" name="password1" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-4" required="required" type="password">
                      </div>
                      <br>
                    
                      
                      <div class="u-align-left u-form-group u-form-submit">
                        <a href="/account/register" class="u-active-palette-2-light-3 u-border-none u-btn u-btn-submit u-button-style u-hover-palette-2-light-3 u-text-active-black u-text-hover-black u-text-palette-2-base u-white u-btn-2">đăng ký<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden" wfd-invisible="true">
                      </div>
                     
                      <c:if test="${not empty error }">
									<div style="width: 450px; height: 50px; background-color:rgb(149, 0, 0); color:  white;padding: 10px;text-align: center;">*${error }*</div>
									</c:if>
                      <input type="hidden" value="" name="recaptchaResponse" wfd-invisible="true">
                    </form:form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
      
       
      <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="/client/img/footer-logo.png" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
                        <a href="#"><img src="/client/img/payment.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Clothing Store</a></li>
                            <li><a href="#">Trending Shoes</a></li>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Sale</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Payment Methods</a></li>
                            <li><a href="#">Delivary</a></li>
                            <li><a href="#">Return & Exchanges</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>NewLetter</h6>
                        <div class="footer__newslatter">
                            <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>2020
                            All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
  <!-- Search End -->

    <!-- Js Plugins -->
    <script src="/client/js/jquery-3.3.1.min.js"></script>
    <script src="/client/js/bootstrap.min.js"></script>
    <script src="/client/js/jquery.nice-select.min.js"></script>
    <script src="/client/js/jquery.nicescroll.min.js"></script>
    <script src="/client/js/jquery.magnific-popup.min.js"></script>
    <script src="/client/js/jquery.countdown.min.js"></script>
    <script src="/client/js/jquery.slicknav.js"></script>
    <script src="/client/js/mixitup.min.js"></script>
    <script src="/client/js/owl.carousel.min.js"></script>
    <script src="/client/js/main.js"></script>
  
  
</html>