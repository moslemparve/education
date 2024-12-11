<template>
    <div>
      <Head title="Create Mapping" />
      <h1 class="mb-8 text-3xl font-bold">
        <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/settings">Settings</Link>
        <span class="text-indigo-400 font-medium">/</span> Mission and Vision
      </h1>
      
      <Tabs/>
      <div class=" bg-white rounded-md shadow overflow-hidden">
        <form @submit.prevent="store">
          <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <TextareaInput v-model="form.mission" :error="form.errors.mission" class="pb-8 pr-6 w-full lg:w-1/2" label="Mission" >{{ form.mission }}</TextareaInput>
            <TextareaInput v-model="form.vision" :error="form.errors.vision" class="pb-8 pr-6 w-full lg:w-1/2" label="Vision">{{ form.vision }}</TextareaInput>
            <text-input :error="form.errors.image" class="pb-8 pr-6 w-full lg:w-1/2" label="Image" @change="handleFileChange"  type="file"/>
         
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
          mission: this.setting.mission_vision ? this.setting.mission_vision.mission : null,
          vision:  this.setting.mission_vision ? this.setting.mission_vision.vision : null,
          image : null
        }),
      }
    },
    methods: {
      store() {
        this.form.post('/admin/settings/mission_vision')
      },
      handleFileChange(event) {
        this.form.image = event.target.files[0];
      }
    },
  }
  </script>
  