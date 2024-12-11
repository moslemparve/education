<template>
    <div>
      <Head title="Create Mapping" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/settings">Settings</Link>
        <span class="text-indigo-400 font-medium">/</span> Social Media Links
      </h1>
      
      <Tabs/>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.facebook" :error="form.errors.facebook" class="pb-8 pr-6 w-full lg:w-1/2" label="Facebook" />
            <text-input v-model="form.instagram" :error="form.errors.instagram" class="pb-8 pr-6 w-full lg:w-1/2" label="Instagram" />
            <text-input :error="form.errors.twitter" v-model="form.twitter" class="pb-8 pr-6 w-full lg:w-1/2" label="twitter"  />
          </div>
          <!-- <div>{{ setting }}</div> -->
          <div class="flex items-center justify-end px-8 py-4 bg-gray-50 border-t border-gray-100">
            <loading-button :loading="form.processing" class="btn-indigo" type="submit">Update</loading-button>
          </div>
        </form>
      </div>
    </div>
  </template>
  
  <script>
  import { Head, Link } from '@inertiajs/vue3'
  import Layout from '@/Shared/Layout.vue'
  import TextInput from '@/Shared/TextInput.vue'
  import TextareaInput from '@/Shared/TextareaInput.vue'
  import SelectInput from '@/Shared/SelectInput.vue'
  import LoadingButton from '@/Shared/LoadingButton.vue'
  import Tabs from '../Tabs.vue'
  
  export default {
    components: {
      Head,
      Link,
      LoadingButton,
      SelectInput,
      TextInput,
      TextareaInput,
      Tabs
    },
    layout: Layout,
    remember: 'form',
    props: {
        setting: Object,
    },
    data() {
      return {
        form: this.$inertia.form({
          facebook: this.setting ? this.setting.social_media.facebook : null,
          instagram:  this.setting ? this.setting.social_media.instagram : null,
          twitter:  this.setting ? this.setting.social_media.twitter : null,
         
        }),
      }
    },
    methods: {
      store() {
        this.form.post('/admin/settings/social_media')
      },
     
    },
  }
  </script>
  