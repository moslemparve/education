<template>
    <div>
      <Head title="Create Mapping" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/settings">Settings</Link>
        <span class="text-indigo-400 font-medium">/</span> Statistics and data
      </h1>
      
      <Tabs/>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.total_school" :error="form.errors.total_school" class="pb-8 pr-6 w-full lg:w-1/2" label="Total School" />
            <text-input v-model="form.total_student" :error="form.errors.total_student" class="pb-8 pr-6 w-full lg:w-1/2" label="Total Student" />
            <text-input :error="form.errors.total_teacher" v-model="form.total_teacher" class="pb-8 pr-6 w-full lg:w-1/2" label="Total Teacher"  />
            <text-input :error="form.errors.total_staff" v-model="form.total_staff" class="pb-8 pr-6 w-full lg:w-1/2" label="Total Staff"  />
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
          total_school: this.setting.statistics ? this.setting.statistics.total_school : null,
          total_student:  this.setting.statistics ? this.setting.statistics.total_student : null,
          total_teacher:  this.setting.statistics ? this.setting.statistics.total_teacher : null,
          total_staff:  this.setting.statistics ? this.setting.statistics.total_staff : null,
          
        }),
      }
    },
    methods: {
      store() {
        this.form.post('/admin/settings/statistics')
      },
     
    },
  }
  </script>
  