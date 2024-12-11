<template>
    <section class="page-title-section overlay">
   <div class="container">
     <div class="row">
       <div class="col-md-8">
         <ul class="list-inline custom-breadcrumb mb-2">
           <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="events.html">Projects</a></li>
           <li class="list-inline-item text-white h3 font-secondary nasted">Project Details</li>
         </ul>
       </div>
     </div>
   </div>
 </section>
 <!-- /page title -->
 
 <!-- event single -->
 <section class="section-sm">
   <div class="container">
    
     <!-- event info -->
    
     <!-- event details -->
     <div class="row">
       <div class="col-12 mb-50">
         <h3>{{ project.title }}</h3>
         <p>{{ project.description }}</p>
       </div>
       <embed style="width: 80vw; height: 100vh" :src="'/'+project.file" />
     </div>
     <!-- event speakers -->
   </div>
 </section>
 <!-- /event single -->

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
        project:Object,
    //    events:Object
     }
 }
 </script>