<template>
    <div>
      <Head title="Create Organization" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/events">Events</Link>
        <span class="text-indigo-400 font-medium">/</span> Create
      </h1>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.title" :error="form.errors.title" class="pb-8 pr-6 w-full lg:w-1/2" label="Title" />
            <text-input v-model="form.location" :error="form.errors.location" class="pb-8 pr-6 w-full lg:w-1/2" label="Location" />
            <text-input v-model="form.date" :error="form.errors.date" class="pb-8 pr-6 w-full lg:w-1/2" type="date" label="Date" />
            <text-input v-model="form.time" :error="form.errors.time" class="pb-8 pr-6 w-full lg:w-1/2" label="Time"  type="time"/>
            <TextareaInput v-model="form.description" :error="form.errors.description" class="pb-8 pr-6 w-full lg:w-1/2" label="Description" >{{ form.description }}</TextareaInput>
            <text-input :error="form.errors.image" class="pb-8 pr-6 w-full lg:w-1/2" label="Image" @change="handleFileChange"  type="file"/>

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
          title: null,
          description: null,
          location: null,
          date: null,
          time: null,
          image:null
        }),
      }
    },
    methods: {
      store() {
        this.form.post('/admin/events/store')
      },
      handleFileChange(event) {
        this.form.image = event.target.files[0];
      }
    },
  }
  </script>
  