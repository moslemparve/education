<template>
 <section class="page-title-section overlay" >
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index.html">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Upcoming Events</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<section class="section">
  <div class="container">
    <div class="row">
      <!-- event -->
      <div v-for="event in events" class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
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
        events:Object
      }
  }
  </script>