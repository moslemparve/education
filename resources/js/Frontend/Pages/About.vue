<template>
    <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index.html">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">About Us</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- about -->
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="section-title">ABOUT</h2>
        <p>{{ setting.about.about }}</p>
        
      </div>
    </div>
  </div>
</section>
<!-- /about -->

<!-- funfacts -->
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
<!-- /funfacts -->

<!-- success story -->

<!-- /success story -->

<!-- teachers -->
<section class="section">
    <div class="container">
      <!-- <div class="row justify-content-center">
        <div class="col-12">
          <h2 class="section-title">Our Teachers</h2>
        </div>
        <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
          <div class="card border-0 rounded-0 hover-shadow">
            <img class="card-img-top rounded-0" src="images/teachers/teacher-1.jpg" alt="teacher">
            <div class="card-body">
              <a href="teacher-single.html">
                <h4 class="card-title">Jacke Masito</h4>
              </a>
              <div class="d-flex justify-content-between">
                <span>Teacher</span>
                <ul class="list-inline">
                  <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://twitter.com/themefisher"><i class="ti-twitter-alt"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://instagram.com/themefisher/"><i class="ti-linkedin"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
          <div class="card border-0 rounded-0 hover-shadow">
            <img class="card-img-top rounded-0" src="images/teachers/teacher-2.jpg" alt="teacher">
            <div class="card-body">
              <a href="teacher-single.html">
                <h4 class="card-title">Clark Malik</h4>
              </a>
              <div class="d-flex justify-content-between">
                <span>Teacher</span>
                <ul class="list-inline">
                  <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://twitter.com/themefisher"><i class="ti-twitter-alt"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://instagram.com/themefisher/"><i class="ti-linkedin"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
          <div class="card border-0 rounded-0 hover-shadow">
            <img class="card-img-top rounded-0" src="images/teachers/teacher-3.jpg" alt="teacher">
            <div class="card-body">
              <a href="teacher-single.html">
                <h4 class="card-title">John Doe</h4>
              </a>
              <div class="d-flex justify-content-between">
                <span>Teacher</span>
                <ul class="list-inline">
                  <li class="list-inline-item"><a class="text-color" href="https://facebook.com/themefisher"><i class="ti-facebook"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://twitter.com/themefisher"><i class="ti-twitter-alt"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://github.com/themefisher"><i class="ti-google"></i></a></li>
                  <li class="list-inline-item"><a class="text-color" href="https://instagram.com/themefisher/"><i class="ti-linkedin"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div> -->
    </div>
  </section>
</template>
<script>
import Layout from './Layouts/Layout.vue'
import { Head, Link } from '@inertiajs/vue3'

export default {
  components: {
      Head,
      Link
    },
    layout: Layout,
    props:{
      setting:Object
    }
}
</script>