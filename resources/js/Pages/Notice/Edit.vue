<template>
  <div>
    <Head :title="form.title" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/events">Event</Link>
      <span class="text-indigo-400 font-medium">/</span>
      {{ form.title }}
    </h1>
    <div class="bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <text-input v-model="form.title" :error="form.errors.title" class="pb-8 pr-6 w-full lg:w-1/2" label="Title" />
          <TextareaInput v-model="form.description" :error="form.errors.description" class="pb-8 pr-6 w-full lg:w-1/2" label="Description" >{{ form.description }}</TextareaInput>
          <text-input v-model="form.date" :error="form.errors.date" class="pb-8 pr-6 w-full lg:w-1/2" type="date" label="date" />
          <text-input v-model="form.time" :error="form.errors.time" class="pb-8 pr-6 w-full lg:w-1/2" type="time" label="time" />
            
        </div>
        <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
          <button class="text-red-600 hover:underline" tabindex="-1" type="button" @click="destroy">Delete notice</button>
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Update notice</loading-button>
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
    notice: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        title: this.notice.title,
        description: this.notice.description,
        date: this.notice.date,
        time: this.notice.time,
        
      }),
    }
  },
  methods: {
    update() {
      this.form.put(`/admin/notices/${this.notice.id}`)
    },
    destroy() {
      if (confirm('Are you sure you want to delete this notice?')) {
        this.$inertia.delete(`/admin/notices/${this.notice.id}`)
      }
    },
  },
}
</script>
