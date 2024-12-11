<template>
    <div>
      <Head title="About" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/settings">About</Link>
        <span class="text-indigo-400 font-medium">/</span> General
      </h1>
      
      <Tabs/>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <!-- <div>{{ form.about.about }}</div> -->
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <TextareaInput v-model="form.about" :error="form.errors.about" class="pb-8 pr-6 w-full" rows="10" label="Address" >{{ form.about }}</TextareaInput>
            <text-input :error="form.errors.image" class="pb-8 pr-6 w-full lg:w-1/2" label="Image" @change="handleFileChange"  type="file"/>

          </div>
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
          about: this.setting ? this.setting.about.about : null,
         image:null
        }),
      }
    },
    methods: {
      store() {
        
        this.form.post('/admin/settings/about')
      },
      handleFileChange(event) {
        this.form.image = event.target.files[0];
      }
    },
  }
  </script>
  