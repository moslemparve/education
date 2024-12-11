<template>
   <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="events.html">Upcoming Events</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Event Details</li>
        </ul>
        <p class="text-lighten mb-0">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- event single -->
<section class="section-sm">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="section-title">{{ event.title }}</h2>
      </div>
      <!-- event image -->
      <div class="col-12 mb-4">
        <img :src="'/'+event.image" alt="event thumb" class="img-fluid w-100">
      </div>
    </div>
    <!-- event info -->
    <div class="row align-items-center mb-5">
      <div class="col-lg-9">
        <ul class="list-inline">
          <li class="list-inline-item mr-xl-5 mr-4 mb-3 mb-lg-0">
            <div class="d-flex align-items-center">
              <i class="ti-location-pin text-primary icon-md mr-2"></i>
              <div class="text-left">
                <h6 class="mb-0">LOCATION</h6>
                <p class="mb-0">{{ event.location }}</p>
              </div>
            </div>
          </li>
          <li class="list-inline-item mr-xl-5 mr-4 mb-3 mb-lg-0">
            <div class="d-flex align-items-center">
              <i class="ti-calendar text-primary icon-md mr-2"></i>
              <div class="text-left">
                <h6 class="mb-0">DATE</h6>
                <p class="mb-0">{{ event.event_date }}</p>
              </div>
            </div>
          </li>
          <li class="list-inline-item mr-xl-5 mr-4 mb-3 mb-lg-0">
            <div class="d-flex align-items-center">
              <i class="ti-time text-primary icon-md mr-2"></i>
              <div class="text-left">
                <h6 class="mb-0">TIME</h6>
                <p class="mb-0">{{ event.time }}</p>
              </div>
            </div>
          </li>
        </ul>
      </div>
    
      <!-- border -->
      <div class="col-12 mt-4 order-4">
        <div class="border-bottom border-primary"></div>
      </div>
    </div>
    <!-- event details -->
    <div class="row">
      <div class="col-12 mb-50">
        <h3>About Event</h3>
        <p>{{ event.description }}</p>
      </div>
    </div>
    <!-- event speakers -->
   
  </div>
</section>
<!-- /event single -->

<!-- more event -->
<section class="section pt-0">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="section-title">More Events</h2>
      </div>
    </div>
    <div class="row justify-content-center">
  <!-- event -->
  <div v-for="event in events" class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
      <div class="card border-0 rounded-0 hover-shadow">
        <div class="card-img position-relative">
          <img class="card-img-top rounded-0" :src="'/'+event.image" alt="event thumb">
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
      event:Object,
      events:Object
    }
}
</script>