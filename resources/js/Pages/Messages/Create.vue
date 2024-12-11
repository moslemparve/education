<template>
    <div>
      <Head title="Create Mapping" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/messages">Message</Link>
        <span class="text-indigo-400 font-medium">/</span> Create
      </h1>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.from" :error="form.errors.from" class="pb-8 pr-6 w-full lg:w-1/2" label="From" />
            <text-input v-model="form.designation" :error="form.errors.designation" class="pb-8 pr-6 w-full lg:w-1/2" label="Designation" />
            <TextareaInput v-model="form.detail" :error="form.errors.detail" class="pb-8 pr-6 w-full lg:w-1/2" label="Detail" >{{ form.detail }}</TextareaInput>
            <text-input :error="form.errors.photo" class="pb-8 pr-6 w-full lg:w-1/2" label="Photo" @change="handleFileChange"  type="file"/>
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
          from: null,
          designation: null,
          detail: null,
          photo: null
        }),
      }
    },
    methods: {
      store() {
        
        this.form.post('/admin/messages/store')
      },
      handleFileChange(event) {
        this.form.photo = event.target.files[0];
      }
    },
  }
  </script>
  