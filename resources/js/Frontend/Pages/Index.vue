<template>
   
  <!-- hero slider -->
  <section class="hero-section overlay bg-cover"  v-bind:style="{ backgroundImage: 'url(' + heroImage + ')' }" >
    <div class="container">
      <div class="hero-slider">
        <!-- slider item -->
        <div v-for="slider in data.sliders" class="hero-slider-item" >
          <!-- {{ slider.image }} -->
          <!-- <img :src="slider.image" height="100px" alt=""> -->
          <div class="row">
            <div class="col-md-8">
              <h1 class="text-white" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".1">{{ slider.title }}</h1>
              <p class="text-muted mb-4" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".4">{{slider.description}}</p>
              <!-- <a href="contact.html" class="btn btn-primary" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".7">Apply now</a> -->
            </div>
          </div>
        </div>
      
      </div>
    </div>
  </section>
  <!-- /hero slider -->
  
  <!-- banner-feature -->
  <section class="bg-gray overflow-md-hidden">
    <div class="container-fluid p-0">
      <div class="row no-gutters">
        <div class="col-xl-4 col-lg-5 align-self-center">
          <img class="img-fluid w-100" :src="setting.mission_vision.image" alt="banner-feature">
        </div>
        <div class="col-xl-8 col-lg-7">
          <div class="row feature-blocks bg-gray justify-content-between ">
            <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left mt-5">
              <i class="ti-book mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
              <h3 class="mb-xl-4 mb-lg-3 mb-4">Our Mission</h3>
              <p>{{ setting.mission_vision.mission }}</p>
            </div>
            <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left  mt-5">
              <i class="ti-book mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>

              <h3 class="mb-xl-4 mb-lg-3 mb-4">Our Vision</h3>
              <p>{{ setting.mission_vision.vision }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- /banner-feature -->
  
  <!-- about us -->
  <section class="section">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6 order-2 order-md-1">
          <h2 class="section-title">About us </h2>
          <p>{{ setting.about.about }} </p>
          <Link href="/about" class="btn btn-outline-primary"> Learn more </Link>
        </div>
        <div class="col-md-6 order-1 order-md-2 mb-4 mb-md-0">
          <img class="img-fluid w-100" :src="setting.about.image" alt="about image">
        </div>
      </div>
    </div>
  </section>
  <!-- /about us -->
  
  <!-- courses -->
  <section class="section-sm">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="d-flex align-items-center section-title justify-content-between">
            <h2 class="mb-0 text-nowrap mr-3">Messages</h2>
            <div class="border-top w-100 border-primary d-none d-sm-block"></div>
            <div>
              <!-- <a href="courses.html" class="btn btn-sm btn-outline-primary ml-sm-3 d-none d-sm-block">see all</a> -->
            </div>
          </div>
        </div>
      </div>
      <!-- course list -->
  <div class="row justify-content-center">
    <!-- course item -->
    <div v-for="message in data.messages" class="col-lg-4 col-sm-6 mb-5">
      <div  class="card p-0 border-primary rounded-0 hover-shadow">
        <img class="card-img-top rounded-0" :src="message.photo" alt="course thumb">
        <div class="card-body">
          <ul class="list-inline mb-2">
            <li class="list-inline-item"><a class="text-color" :href="'message/'+message.id">{{ message.designation }}</a></li>
          </ul>
          <Link :href="'message/'+message.id">
            <h4 class="card-title">{{ message.from }}</h4>
          </Link>
          <p class="card-text mb-4 text_trancate"> {{message.detail}}</p>
          <Link :href="'message/'+message.id" class="btn btn-primary btn-sm">View Details</Link>
        </div>
      </div>
    </div>
  
    
  </div>
  <!-- /course list -->
      <!-- mobile see all button -->
      <div class="row">
        <div class="col-12 text-center">
          <a href="courses.html" class="btn btn-sm btn-outline-primary d-sm-none d-inline-block">sell all</a>
        </div>
      </div>
    </div>
  </section>
  <!-- /courses -->
  
  <!-- cta -->
  <section class="section bg-primary">
    <div class="container">
      <div class="row">
        <div class="col-12 text-center">
          <h2 class="section-title text-white">STATISTICS & DATA</h2>
        </div>
        
      </div>
      <section class="section-sm bg-primary">
  <div class="container">
    <div class="row">
      <!-- funfacts item -->
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" :data-count="setting.statistics.total_school">0</h2>
          <h5 class="text-white">Total School</h5>
        </div>
      </div>
      <!-- funfacts item -->
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" :data-count="setting.statistics.total_student">0</h2>
          <h5 class="text-white">Total Students</h5>
        </div>
      </div>
      <!-- funfacts item -->
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" :data-count="setting.statistics.total_teacher">0</h2>
          <h5 class="text-white">Total Teachers</h5>
        </div>
      </div>
      <!-- funfacts item -->
      <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
        <div class="text-center">
          <h2 class="count text-white" :data-count="setting.statistics.total_staff">0</h2>
          <h5 class="text-white">Total Staff</h5>
        </div>
      </div>
    </div>
  </div>
</section>
    </div>
  </section>
  <!-- /cta -->
  
  <!-- success story -->
  <section class="section bg-cover" data-background="images/backgrounds/success-story.jpg">
    <div class="container">
      <div class="row">
       
      </div>
    </div>
  </section>
  <!-- /success story -->
  
  <!-- events -->
  <section class="section bg-gray">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="d-flex align-items-center section-title justify-content-between">
            <h2 class="mb-0 text-nowrap mr-3">Upcoming Events</h2>
            <div class="border-top w-100 border-primary d-none d-sm-block"></div>
            <div>
              <!-- <a href="events.html" class="btn btn-sm btn-outline-primary ml-sm-3 d-none d-sm-block">see all</a> -->
            </div>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
    <!-- event -->
    <div v-for="event in data.events" class="col-lg-4 col-sm-6 mt-5 mb-lg-0">
      <div class="card border-0 rounded-0 hover-shadow">
        <div class="card-img position-relative">
          <img class="card-img-top rounded-0" :src="event.image" alt="event thumb">
          <div class="card-date"><span>{{ event.event_date }}</span><br>{{ event.month }}</div>
        </div>
        <div class="card-body">
          <!-- location -->
          <p><i class="ti-location-pin text-primary mr-2"></i>{{ event.location }}</p>
          <Link :href="'/event/'+event.id"><h4 class="card-title">{{ event.title }}</h4></Link>
          <Link :href="'/event/'+event.id" class="btn btn-primary btn-sm">View Details</Link>
        </div>
      </div>
    </div>
  </div>
      <!-- mobile see all button -->
      <div class="row">
        <div class="col-12 text-center">
          <a href="course.html" class="btn btn-sm btn-outline-primary d-sm-none d-inline-block">sell all</a>
        </div>
      </div>
    </div>
  </section>
  <!-- /events -->
  
  <!-- teachers -->
  <section class="section">
    <div class="container">
      <div class="row ">
        <div class="col-12">
          <h2 class="section-title">School Details</h2>
        </div>
        <!-- teacher -->
        <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
          <div>
      <GoogleMap
         api-key="AIzaSyCqrZnjQWx79s1srv3sii29aAzah-5v_Jo"
        :center="mapCenter"
        :zoom="8"
        :options="mapOptions"
        style="height: 500px; width: 350%;"
      >
  
        <Marker
          v-for="(marker, index) in data.mapping"
          :key="index"
          :position="marker.position"
          :title="marker.title"
          :options="{ position: marker.position }"
          @click="showInfoWindow(marker)"
          
        >
        <InfoWindow v-model="marker.infoWinOpen">
          <div id="content">
            <h1 id="firstHeading" class="firstHeading">{{ marker.title }}</h1>
            <div id="bodyContent">
              <div class="container">
              <img :src="marker.image" :alt="marker.name" />
              <h6 class="mt-3">School : {{ marker.name }}</h6>
              <p>Principle : {{ marker.principle }}.</p>
              <p>Number of Student : {{ marker.no_of_student }}.</p>
              <p>Address : {{ marker.address }}.</p>
            </div>
            </div>
          </div>
        </InfoWindow>
      </Marker>
  
      </GoogleMap>
  
    </div>
        </div>
      
      </div>
    </div>
  </section>
  <!-- /teachers -->
  
  <!-- blog -->
  <section class="section pt-0">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2 class="section-title">Latest News</h2>
        </div>
      </div>
      <div class="row justify-content-center">
    <!-- blog post -->
    <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0" v-for="news in data.news">
      <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
        <img class="card-img-top rounded-0" :src="news.image" alt="Post thumb">
        <div class="card-body">
          <!-- post meta -->
          <ul class="list-inline mb-3">
            <!-- post date -->
            <li class="list-inline-item mr-3 ml-0">{{ news.date }}</li>
            <!-- author -->
          </ul>
          <a href="blog-single.html">
            <h4 class="card-title">{{ news.title }}</h4>
          </a>
          <p class="card-text text_trancate">{{ news.details }}</p>
          <a href="blog-single.html" class="btn btn-primary btn-sm">read more</a>
        </div>
      </div>
    </article>
  </div>
    </div>
  </section>
  </template>
  <script>
  import { GoogleMap, Marker, InfoWindow } from "vue3-google-map";
  import Layout from "./Layouts/Layout.vue";
  import { ref, watch } from 'vue';
import { Head, Link } from '@inertiajs/vue3'

  export default {
    components: {
      GoogleMap,
      Marker,
      InfoWindow,
      Head,
      Link
    },
    props: {
      data: Object,
      setting: Object,

    },
    layout: Layout,
    mounted() {
      // Initialize slider
      this.$nextTick(() => {
        const slider = $('.hero-slider');
        this.heroImage = this.data.sliders[0].image;
    slider.slick({
      autoplay: true,
      autoplaySpeed: 7500,
      pauseOnFocus: false,
      pauseOnHover: false,
      infinite: true,
      arrows: true,
      fade: true,
      prevArrow: '<button type="button" class="prevArrow"><i class="ti-angle-left"></i></button>',
      nextArrow: '<button type="button" class="nextArrow"><i class="ti-angle-right"></i></button>',
      dots: true,
    });

   
    slider.on('afterChange', (event, slick, currentSlide) => {
      this.heroImage = this.data.sliders[currentSlide].image;
    });

    slider.slickAnimation();
      
      });
    
    },
   methods:{
    showInfoWindow(marker){
      marker.infoWinOpen = true;
      this.data.mapping.forEach(element => {
        if(element != marker){
        element.infoWinOpen = false;
      }
      });
},
  
},
    data() {
      return {
        mapCenter: { lat: 35.5, lng: 75.0 },
        mapOptions: {
          restriction: {
            latLngBounds: {
              north: 37.2,
              south: 34.5,
              east: 76.5,
              west: 73.5,
            },
            strictBounds: true,
          },
          disableDefaultUI: true,
          zoomControl: true,
          streetViewControl: false,
          mapTypeControl: false,
          gestureHandling: "greedy",
        },
    heroImage: ref(this.data.sliders[0].image),
        
      };
    }
  };
  </script>
  <style>
  .text_trancate{
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .info-content img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    margin-bottom: 10px;
  }
  img.card-img-top.rounded-0 {
    height: 230px;
}
div#bodyContent img {
    width:100%;
    height:inheit;
}
  </style>