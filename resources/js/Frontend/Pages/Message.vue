<template>
  <!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="teacher.html">Message</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">{{ message.from }}</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- teacher details -->
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-md-5 mb-5">
        <img class="img-fluid w-100" :src="'/'+message.photo" alt="teacher">
      </div>
      <div class="col-md-6 mb-5">
        <h3>{{ message.from }}</h3>
        <h6 class="text-color">{{ message.designation }}</h6>
        <p class="mb-5">{{ message.detail }}</p>
      
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
        message:Object
    }
}
</script>