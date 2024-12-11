<!DOCTYPE html>


<html lang="en">
<head>

  <!-- Basic Page Needs
	================================================== -->
  <meta charset="utf-8">
  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Mobile Specific Metas
	================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Educenter HTML Template v1.0">
  
  <!-- theme meta -->
  <meta name="theme-name" content="educenter" />

  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- animation css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/venobox/venobox.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">

  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
  <link rel="icon" href="images/favicon.png" type="image/x-icon">

</head>

<body>
  <!-- preloader start -->
  <div class="preloader">
    <img src="images/preloader.gif" alt="preloader">
  </div>

  <!-- preloader end -->

<!-- header -->
<header class="fixed-top header">
    <!-- top header -->
    <div class="top-header py-2 bg-white">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-4 text-center text-lg-left">
            <a class="text-color mr-3" href="tel:+443003030266"><strong>CALL</strong> +44 300 303 0266</a>
            <ul class="list-inline d-inline">
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://facebook.com/themefisher/"><i class="ti-facebook"></i></a></li>
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://twitter.com/themefisher"><i class="ti-twitter-alt"></i></a></li>
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://github.com/themefisher"><i class="ti-github"></i></a></li>
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="https://instagram.com/themefisher/"><i class="ti-instagram"></i></a></li>
            </ul>
          </div>
          <div class="col-lg-8 text-center text-lg-right">
            <ul class="list-inline">
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="notice.html">notice</a></li>
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="research.html">research</a></li>
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="scholarship.html">SCHOLARSHIP</a></li>
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="{{ route('login') }}">login</a></li>
              {{-- <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="{{ route('register') }}">register</a></li> --}}
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- navbar -->
    <div class="navigation w-100">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark p-0">
          <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
          <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
            aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
  
          <div class="collapse navbar-collapse" id="navigation">
              <ul class="navbar-nav ml-auto text-center">
                  <li class="nav-item @@home">
                      <a class="nav-link" href="{{ route('website.home') }}">Home</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="{{ route('website.about') }}">About</a>
                    </li>
                    <li class="nav-item @@courses">
                      <a class="nav-link" href="courses.html">COURSES</a>
                    </li>
                    <li class="nav-item @@events">
                      <a class="nav-link" href="{{ route('website.events') }}">EVENTS</a>
                    </li>
                  <li class="nav-item @@blog">
                    <a class="nav-link" href="blog.html">BLOG</a>
                  </li>
                  <li class="nav-item dropdown view">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Pages
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="teacher.html">Teacher</a></li>
                      <li><a class="dropdown-item" href="teacher-single.html">Teacher Single</a></li>
                      <li><a class="dropdown-item" href="notice.html">Notice</a></li>
                      <li><a class="dropdown-item" href="notice-single.html">Notice Details</a></li>
                      <li><a class="dropdown-item" href="research.html">Research</a></li>
                      <li><a class="dropdown-item" href="scholarship.html">Scholarship</a></li>
                      <li><a class="dropdown-item" href="course-single.html">Course Details</a></li>
                      <li><a class="dropdown-item" href="{{ route('website.events.details') }}">Event Details</a></li>
                      <li><a class="dropdown-item" href="blog-single.html">Blog Details</a></li>
                      
                      <li class="dropdown-item dropdown dropleft">
                        <a class="dropdown-toggle" href="#" id="navbarDropdownSubmenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Sub Menu
                        </a>
                        <ul class="dropdown-menu dropdown-submenu" aria-labelledby="navbarDropdownSubmenu">
                          <li><a class="dropdown-item" href="#!">Sub Menu 01</a></li>
                          <li><a class="dropdown-item" href="#!">Sub Menu 02</a></li>
                          <li><a class="dropdown-item" href="#!">Sub Menu 03</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li class="nav-item @@contact">
                    <a class="nav-link" href="contact.html">CONTACT</a>
                  </li>
                </ul>
          </div>
        </nav>
      </div>
    </div>
  </header>

  @yield('website')

<!-- footer -->
<footer>
    <!-- newsletter -->
    <div class="newsletter">
      <div class="container">
        <div class="row">
          <div class="col-md-9 ml-auto bg-primary py-5 newsletter-block">
            <h3 class="text-white">Subscribe Now</h3>
            <form action="#">
              <div class="input-wrapper">
                <input type="email" class="form-control border-0" id="newsletter" name="newsletter" placeholder="Enter Your Email...">
                <button type="submit" value="send" class="btn btn-primary">Join</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- footer content -->
    <div class="footer bg-footer section border-bottom">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-sm-8 mb-5 mb-lg-0">
            <!-- logo -->
            <a class="logo-footer" href="index.html"><img class="img-fluid mb-4" src="images/logo.png" alt="logo"></a>
            <ul class="list-unstyled">
              <li class="mb-2">23621 15 Mile Rd #C104, Clinton MI, 48035, New York, USA</li>
              <li class="mb-2">+1 (2) 345 6789</li>
              <li class="mb-2">+1 (2) 345 6789</li>
              <li class="mb-2">contact@yourdomain.com</li>
            </ul>
          </div>
          <!-- company -->
          <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
            <h4 class="text-white mb-5">COMPANY</h4>
            <ul class="list-unstyled">
              <li class="mb-3"><a class="text-color" href="about.html">About Us</a></li>
              <li class="mb-3"><a class="text-color" href="teacher.html">Our Teacher</a></li>
              <li class="mb-3"><a class="text-color" href="contact.html">Contact</a></li>
              <li class="mb-3"><a class="text-color" href="blog.html">Blog</a></li>
            </ul>
          </div>
          <!-- links -->
          <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
            <h4 class="text-white mb-5">LINKS</h4>
            <ul class="list-unstyled">
              <li class="mb-3"><a class="text-color" href="courses.html">Courses</a></li>
              <li class="mb-3"><a class="text-color" href="events.html">Events</a></li>
              <li class="mb-3"><a class="text-color" href="notice.html">Notice</a></li>
              <li class="mb-3"><a class="text-color" href="scholarship.html">Scholarship</a></li>
            </ul>
          </div>
          <!-- support -->
          <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
            <h4 class="text-white mb-5">SUPPORT</h4>
            <ul class="list-unstyled">
              <li class="mb-3"><a class="text-color" href="https://themefisher.com/blog">Forums</a></li>
              <li class="mb-3"><a class="text-color" href="https://docs.themefisher.com/">Documentation</a></li>
              <li class="mb-3"><a class="text-color" href="#!">Language</a></li>
              <li class="mb-3"><a class="text-color" href="#!">Release Status</a></li>
            </ul>
          </div>
          <!-- support -->
          <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
            <h4 class="text-white mb-5">RECOMMEND</h4>
            <ul class="list-unstyled">
              <li class="mb-3"><a class="text-color" href="https://themefisher.com/">WordPress</a></li>
              <li class="mb-3"><a class="text-color" href="https://themefisher.com/">LearnPress</a></li>
              <li class="mb-3"><a class="text-color" href="https://themefisher.com/">WooCommerce</a></li>
              <li class="mb-3"><a class="text-color" href="https://themefisher.com/">bbPress</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- copyright -->
    <div class="copyright py-4 bg-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-7 text-sm-left text-center">
            <p class="mb-0">Copyright &copy;
              <script>
                var CurrentYear = new Date().getFullYear()
                document.write(CurrentYear)
              </script> 
              , designed & developed by <a href="https://themefisher.com/" class="text-muted">Themefisher</a>
            </p>
          </div>
          <div class="col-sm-5 text-sm-right text-center">
            <ul class="list-inline">
              <li class="list-inline-item"><a class="d-inline-block p-2" href="https://facebook.com/themefisher/"><i class="ti-facebook text-primary"></i></a></li>
              <li class="list-inline-item"><a class="d-inline-block p-2" href="https://twitter.com/themefisher"><i class="ti-twitter-alt text-primary"></i></a></li>
              <li class="list-inline-item"><a class="d-inline-block p-2" href="https://github.com/themefisher"><i class="ti-github text-primary"></i></a></li>
              <li class="list-inline-item"><a class="d-inline-block p-2" href="https://instagram.com/themefisher/"><i class="ti-instagram text-primary"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- /footer -->
  
  <!-- jQuery -->
  <script src="plugins/jQuery/jquery.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <!-- slick slider -->
  <script src="plugins/slick/slick.min.js"></script>
  <!-- aos -->
  <script src="plugins/aos/aos.js"></script>
  <!-- venobox popup -->
  <script src="plugins/venobox/venobox.min.js"></script>
  <!-- filter -->
  <script src="plugins/filterizr/jquery.filterizr.min.js"></script>
  <!-- google map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"></script>
  <script src="plugins/google-map/gmap.js"></script>
  
  <!-- Main Script -->
  <script src="js/script.js"></script>
  
  </body>
  </html>
  