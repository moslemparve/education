<template>
  <div>
    <Head :title="form.title" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/projects">project</Link>
      <span class="text-indigo-400 font-medium">/</span>
      {{ form.title }}
    </h1>
    <div class="bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <text-input v-model="form.title" :error="form.errors.title" class="pb-8 pr-6 w-full lg:w-1/2" label="title" />
            <TextareaInput v-model="form.description" :error="form.errors.description" class="pb-8 pr-6 w-full lg:w-1/2" label="description" >{{ form.description }}</TextareaInput>
            <text-input :error="form.errors.file" class="pb-8 pr-6 w-full lg:w-1/2" label="file" @change="handleFileChange"  type="file"/>
          </div>
        <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
          <button class="text-red-600 hover:underline" tabindex="-1" type="button" @click="destroy">Delete</button>
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Update</loading-button>
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
    project: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        title: this.project.title,
          description: this.project.description,
        file: null,
       
      }),
    }
  },
  methods: {
    update() {
      this.form.post(`/admin/projects/${this.project.id}`)
    },
    handleFileChange(event) {
  const file = event.target.files[0];
  if (file) {
    this.form.file = file; // Assign the file without affecting other fields
  }
},
    destroy() {
      if (confirm('Are you sure you want to delete this project?')) {
        this.$inertia.delete(`/admin/projects/${this.project.id}`)
      }
    },
  },
}
</script>
