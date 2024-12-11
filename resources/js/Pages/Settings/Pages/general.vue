<template>
    <div>
      <Head title="Create Mapping" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/settings">Settings</Link>
        <span class="text-indigo-400 font-medium">/</span> General
      </h1>
      
      <Tabs/>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.email" :error="form.errors.email" class="pb-8 pr-6 w-full lg:w-1/2" label="Email" type="email"/>
            <text-input v-model="form.contact" :error="form.errors.contact" class="pb-8 pr-6 w-full lg:w-1/2" label="Contact" />
            <TextareaInput v-model="form.address" :error="form.errors.address" class="pb-8 pr-6 w-full lg:w-1/2" label="Address" >{{ form.address }}</TextareaInput>
            <text-input :error="form.errors.logo" class="pb-8 pr-6 w-full lg:w-1/2" label="Logo" @change="handleFileChange"  type="file"/>
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
          email: this.setting ? this.setting.email : null,
          address:  this.setting ? this.setting.address : null,
          contact:  this.setting ? this.setting.contact : null,
          logo : null,
         
        }),
      }
    },
    methods: {
      store() {
        
        this.form.post('/admin/settings/general')
      },
      handleFileChange(event) {
        this.form.logo = event.target.files[0];
      }
    },
  }
  </script>
  