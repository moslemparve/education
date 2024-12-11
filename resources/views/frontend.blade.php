
<!DOCTYPE html>
<html class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg">

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
    <link rel="stylesheet" href="{{ asset('plugins/bootstrap/bootstrap.min.css') }}">
    <!-- slick slider -->
    <link rel="stylesheet" href="{{ asset('plugins/slick/slick.css') }}">
    <!-- themefy-icon -->
    <link rel="stylesheet" href="{{ asset('plugins/themify-icons/themify-icons.css') }}">
    <!-- animation css -->
    <link rel="stylesheet" href="{{ asset('plugins/animate/animate.css') }}">
    <!-- aos -->
    <link rel="stylesheet" href="{{ asset('plugins/aos/aos.css') }}">
    <!-- venobox popup -->
    <link rel="stylesheet" href="{{ asset('plugins/venobox/venobox.css') }}">
  
    <!-- Main Stylesheet -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
  
    <!--Favicon-->
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <link rel="icon" href="images/favicon.png" type="image/x-icon">

    @vite('resources/js/Frontend/app.js')
    @inertiaHead
</head>
<body class="font-sans leading-none text-gray-700 antialiased">
  <div class="preloader" style="display: none;">
    <img src="/images/preloader.gif" alt="preloader">
  </div>
    @inertia
     <!-- jQuery -->
     <!-- Bootstrap JS -->
     <script  src="{{ asset('plugins/jQuery/jquery.min.js') }}"></script>
  <script  async src="{{ asset('plugins/bootstrap/bootstrap.min.js') }}"></script>
  <!-- slick slider -->
  <script  async src="{{ asset('plugins/slick/slick.min.js') }}"></script>
  <!-- aos -->
  <script  async src="{{ asset('plugins/aos/aos.js') }}"></script>
  <!-- venobox popup -->
  <script  async src="{{ asset('plugins/venobox/venobox.min.js') }}"></script>
  <!-- filter -->
  <script  async src="{{ asset('plugins/filterizr/jquery.filterizr.min.js') }}"></script>
  <!-- google map -->
  {{-- <script  async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"></script> --}}
  <script  async src="{{ asset('plugins/google-map/gmap.js') }}"></script>
  
  <!-- Main Script -->
  <script async src="{{ asset('js/script.js') }}"></script>
</body>

</html>
