<template>
    <div>
      <Head title="Create Mapping" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/mappings">Mapping</Link>
        <span class="text-indigo-400 font-medium">/</span> Create
      </h1>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.name" :error="form.errors.name" class="pb-8 pr-6 w-full lg:w-1/2" label="Name" />
            <TextareaInput v-model="form.address" :error="form.errors.address" class="pb-8 pr-6 w-full lg:w-1/2" label="Address" >{{ form.address }}</TextareaInput>
            <text-input v-model="form.lat" :error="form.errors.lat" class="pb-8 pr-6 w-full lg:w-1/2" label="Latitute" />
            <text-input v-model="form.long" :error="form.errors.long" class="pb-8 pr-6 w-full lg:w-1/2"  label="Longitute" />
            <text-input v-model="form.principle" :error="form.errors.principle" class="pb-8 pr-6 w-full lg:w-1/2"  label="Principal" />
            <text-input v-model="form.no_of_student" :error="form.errors.no_of_student" class="pb-8 pr-6 w-full lg:w-1/2" label="Number of student"  type="number"/>
            <text-input v-model="form.contact" :error="form.errors.contact" class="pb-8 pr-6 w-full lg:w-1/2" label="Contact Number"  type="number"/>
            <text-input v-model="form.district" :error="form.errors.district" class="pb-8 pr-6 w-full lg:w-1/2" label="District" />
            <text-input :error="form.errors.image" class="pb-8 pr-6 w-full lg:w-1/2" label="Photo" @change="handleFileChange"  type="file"/>
          </div>
          <div class="flex items-center justify-end px-8 py-4 bg-gray-50 border-t border-gray-100">
            <loading-button :loading="form.processing" class="btn-indigo" type="submit">Create</loading-button>
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
  
  export default {
    components: {
      Head,
      Link,
      LoadingButton,
      SelectInput,
      TextInput,
      TextareaInput
    },
    layout: Layout,
    remember: 'form',
    data() {
      return {
        form: this.$inertia.form({
          name: null,
          address: null,
          lat: null,
          long: null,
          principle: null,
          no_of_student : null,
          image : null,
          contact: null,
          district: null  
        }),
      }
    },
    methods: {
      store() {
        
        this.form.post('/admin/mappings/store')
      },
      handleFileChange(event) {
        this.form.image = event.target.files[0];
      }
    },
  }
  </script>
  