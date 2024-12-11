<template>
  <section class="page-title-section overlay" >
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index.html">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Schools</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<div class="offset-4 col-md-4 mt-2">

    <input type="search" class="form-control mb-3" v-model="search" @input="SearchSchool" placeholder="Type School Name or District For Search" >
</div>
<section class="section">
  <div class="container">
    <!-- course list -->
<div class="row justify-content-center">
  <!-- course item -->
  <div class="col-lg-4 col-sm-6 mb-5" v-for="school in schools">
    <div class="card p-0 border-primary rounded-0 hover-shadow">
      <img class="card-img-top rounded-0" :src="school.image" alt="course thumb">
      <div class="card-body">
          <a href="course-single.html">
              <h4 class="card-title">{{ school.name }}</h4>
            </a>
            <ul class="list-inline mb-2">
              <li class="list-inline-item"><i class="ti-location-pin mr-1 text-color"></i>{{ school.address }}</li>
            </ul>
            <ul class="list-inline mb-2">
              <li class="list-inline-item">No of Student : <i class="ti-user mr-1 text-color"></i> {{ school.no_of_student }}</li>
            </ul>
            <ul class="list-inline mb-2">
              <li class="list-inline-item">Principal : <i class="ti-user mr-1 text-color"></i>{{ school.principle }}</li>
            </ul>
            <ul class="list-inline mb-2">
              <li class="list-inline-item">District : <i class="ti-home mr-1 text-color"></i>{{ school.district }}</li>
            </ul>
            <ul class="list-inline mb-2">
              <li class="list-inline-item">Contact : <i class="ti-mobile mr-1 text-color"></i>{{ school.contact }}</li>
            </ul>
        <!-- <p class="card-text"> Lorem ipsum</p>
        <p class="card-text"> Lorem ipsum</p>
        <p class="card-text"> Lorem ipsum</p>
        <p class="card-text"> Lorem ipsum</p> -->
      </div>
    </div>
  </div>
  
</div>
<!-- /course list -->
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
        schools:Object
      },
      data() {
      return {
          search: null,
      }
    },
    methods:{
        SearchSchool() {
      this.$inertia.get('/schools', { search: this.search }, {
        replace: true,
        preserveState: true
      });
    }
    }
  }
  </script>