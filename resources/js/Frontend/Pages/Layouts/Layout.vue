<template>

 <header class="fixed-top header">
    <!-- top header -->
    <div class="top-header py-2 bg-white">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-4 text-center text-lg-left">
            <a class="text-color mr-3" href="tel:+443003030266"><strong>CALL :  </strong> {{ setting.contact }}</a>
            <ul class="list-inline d-inline">
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" :href="setting.social_media.facebook"><i class="ti-facebook"></i></a></li>
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color":href="setting.social_media.twitter"><i class="ti-twitter-alt"></i></a></li>
              <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" :href="setting.social_media.instagram"><i class="ti-instagram"></i></a></li>
            </ul>
          </div>
          <!-- <div class="col-lg-8 text-center text-lg-right">
            <ul class="list-inline">
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="notice.html">notice</a></li>
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="research.html">research</a></li>
              <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="scholarship.html">SCHOLARSHIP</a></li>
            </ul>
          </div> -->
        </div>
      </div>
    </div>
    <!-- navbar -->
    <div class="navigation w-100">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark p-0">
          <Link class="navbar-brand" href="/"><img :src="'/'+setting.logo" alt="logo"></Link>
          <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
            aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
  
          <div class="collapse navbar-collapse" id="navigation">
              <ul class="navbar-nav ml-auto text-center">
                  <li class="nav-item" :class=" route =='/' ? 'active' : ''">
                      <Link class="nav-link" href="/">Home</Link>
                    </li>
                    <li class="nav-item" :class=" route =='/about' ? 'active' : ''">
                      <Link class="nav-link" href="/about">About</Link>
                    </li>
                    <li class="nav-item" :class=" route =='/projects' ? 'active' : ''">
                      <Link class="nav-link" href="/projects">Projects</Link>
                    </li>
                    <li class="nav-item" :class=" route =='/schools' ? 'active' : ''">
                      <Link class="nav-link"  href="/schools">Schools</Link>
                    </li>
                    <li class="nav-item" :class=" route =='/events' ? 'active' : ''">
                      <Link class="nav-link" href="/events">EVENTS</Link>
                    </li>
                  <!-- <li class="nav-item @@blog">
                    <a class="nav-link" href="blog.html">BLOG</a>
                  </li> -->
                
                  <!-- <li class="nav-item @@contact">
                    <a class="nav-link" href="contact.html">CONTACT</a>
                  </li> -->
                </ul>
          </div>
        </nav>
      </div>
    </div>
  </header>
  <slot />
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
            <a class="logo-footer" href="index.html"><img class="img-fluid mb-4" :src="'/'+setting.logo" alt="logo"></a>
            <ul class="list-unstyled">
              <li class="mb-2">{{ setting.address }}</li>
              <li class="mb-2">{{ setting.contact }}</li>
              <li class="mb-2">{{ setting.email }}</li>
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
              {{ date }}
              <a href="#" class="text-muted"> Education</a>
            </p>
          </div>
          <div class="col-sm-5 text-sm-right text-center">
            <ul class="list-inline">
              <li class="list-inline-item"><a class="d-inline-block p-2" :href="setting.social_media.facebook"><i class="ti-facebook text-primary"></i></a></li>
              <li class="list-inline-item"><a class="d-inline-block p-2" :href="setting.social_media.twitter"><i class="ti-twitter-alt text-primary"></i></a></li>
              <li class="list-inline-item"><a class="d-inline-block p-2" :href="setting.social_media.instagram"><i class="ti-instagram text-primary"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>
<script>
  import { Head, Link } from '@inertiajs/vue3'

export default{
  components: {
      Head,
      Link
    },
    data(){
      return {
        date : new Date().getFullYear()
      }
    },
    props: {
      setting: Object,
      route:String
  },
  methods:{
    isUrl(...urls) {
      let currentUrl = this.$page.url.substr(1)
      if (urls[0] === '') {
        return currentUrl === ''
      }
      return urls.filter((url) => currentUrl.startsWith(url)).length
    },
  }
}
</script>