<template>
    <div>
      <Head title="Create Career" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/career">Career</Link>
        <span class="text-indigo-400 font-medium">/</span> Create
      </h1>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.title" :error="form.errors.title" class="pb-8 pr-6 w-full lg:w-1/2" label="Title" /> 
            <text-input v-model="form.position" :error="form.errors.position" class="pb-8 pr-6 w-full lg:w-1/2" label="Position" />
            <text-input v-model="form.location" :error="form.errors.location" class="pb-8 pr-6 w-full lg:w-1/2" label="Location" />
            <text-input v-model="form.duration" :error="form.errors.duration" class="pb-8 pr-6 w-full lg:w-1/2" label="Duration" />
            <TextareaInput v-model="form.description" :error="form.errors.description" class="pb-8 pr-6 w-full lg:w-1/2" label="Description" >{{ form.description }}</TextareaInput>
            <TextareaInput v-model="form.requirements" :error="form.errors.requirements" class="pb-8 pr-6 w-full lg:w-1/2"  label="Requirnments" ></TextareaInput>
            <label class="form-label" >Status:</label>
            <label class="relative inline-flex cursor-pointer items-center pb-8 pr-6 w-full lg:w-1/2">
            <input id="switch" type="checkbox" class="peer sr-only" v-model="form.status" />
            <label for="switch" class="hidden"></label>
            <div class="peer h-6 w-11 rounded-full border bg-slate-200 after:absolute after:left-[2px] after:top-0.5 after:h-5 after:w-5 after:rounded-full after:border after:border-gray-300 after:bg-white after:transition-all after:content-[''] peer-checked:bg-slate-800 peer-checked:after:translate-x-full peer-checked:after:border-white peer-focus:ring-green-300"></div>
          </label>
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
          position: null,
          requirements: null,
          location: null,
          duration: null,
          status: false,
        }),
      }
    },
    methods: {
      store() {
        this.form.post('/admin/careers/store')
      },
     
    },
  }
  </script>
  