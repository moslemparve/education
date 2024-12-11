<template>
  <div>
    <Head :title="form.title" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/careers">Career</Link>
      <span class="text-indigo-400 font-medium">/</span>
      {{ form.title }}
    </h1>
    <div class="bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
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
        <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
          <button class="text-red-600 hover:underline" tabindex="-1" type="button" @click="destroy">Delete career</button>
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Update career</loading-button>
        </div>
      </form>
    </div>
  
  </div>
</template>

<script>
import { Head, Link } from '@inertiajs/vue3'
import Icon from '@/Shared/Icon.vue'
import Layout from '@/Shared/Layout.vue'
import TextInput from '@/Shared/TextInput.vue'
import SelectInput from '@/Shared/SelectInput.vue'
import LoadingButton from '@/Shared/LoadingButton.vue'
import TrashedMessage from '@/Shared/TrashedMessage.vue'
import TextareaInput from '@/Shared/TextareaInput.vue'

export default {
  components: {
    Head,
    Icon,
    Link,
    LoadingButton,
    SelectInput,
    TextInput,
    TrashedMessage,
    TextareaInput
  },
  layout: Layout,
  props: {
    career: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        title: this.career.title,
        description: this.career.description,
        position: this.career.position,
        requirements: this.career.requirements,
        location : this.career.location, 
        duration : this.career.duration, 
        status  : this.career.status,  
      }),
    }
  },
  methods: {
    update() {
      this.form.put(`/admin/careers/${this.career.id}`)
    },
    destroy() {
      if (confirm('Are you sure you want to delete this career?')) {
        this.$inertia.delete(`/admin/careers/${this.career.id}`)
      }
    },
  },
}
</script>
