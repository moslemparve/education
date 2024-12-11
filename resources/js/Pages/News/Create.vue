<template>
    <div>
      <Head title="Create News" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/news">News</Link>
        <span class="text-indigo-400 font-medium">/</span> Create
      </h1>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.title" :error="form.errors.title" class="pb-8 pr-6 w-full lg:w-1/2" label="Title" />
            <TextareaInput v-model="form.details" :error="form.errors.details" class="pb-8 pr-6 w-full lg:w-1/2" label="Details" >{{ form.details }}</TextareaInput>
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
          title: null,
          details: null,
          image : null,
        }),
      }
    },
    methods: {
      store() {
        
        this.form.post('/admin/news/store')
      },
      handleFileChange(event) {
        this.form.image = event.target.files[0];
      }
    },
  }
  </script>
  