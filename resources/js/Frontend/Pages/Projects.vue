<template>
 <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg" style="background-image: url(&quot;images/backgrounds/page-title.jpg&quot;);">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Projects</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <ul class="list-unstyled">
          <!-- notice item -->
          <li v-for="project in projects" class="d-md-table mb-4 w-100 border-bottom hover-shadow">
            <div class="d-md-table-cell text-center p-4 bg-primary text-white mb-4 mb-md-0"><span class="h2 d-block">{{ project.day }}</span> {{ project.event_month }},{{ project.event_year }}</div>
            <div class="d-md-table-cell px-4 vertical-align-middle mb-4 mb-md-0">
              <Link :href='"project/"+project.id' class="h4 mb-3 d-block">{{ project.title }}</Link>
              <p class="mb-0">{{ project.description }}</p>
            </div>
            <div class="d-md-table-cell text-right pr-0 pr-md-4"><Link :href='"project/"+project.id' class="btn btn-primary">read more</Link></div>
          </li>
        </ul>
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
        projects:Object
    }
}
</script>