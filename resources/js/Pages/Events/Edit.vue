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
          <text-input v-model="form.location" :error="form.errors.location" class="pb-8 pr-6 w-full lg:w-1/2" label="location" />
          <text-input v-model="form.date" :error="form.errors.date" class="pb-8 pr-6 w-full lg:w-1/2" type="date" label="date" />
          <text-input v-model="form.time" :error="form.errors.time" class="pb-8 pr-6 w-full lg:w-1/2" type="time" label="time" />
          <text-input :error="form.errors.image" class="pb-8 pr-6 w-full lg:w-1/2" label="Image" @change="handleFileChange"  type="file"/>
          
          <img width="100px" height="40px" :src="'/'+event.image_show" alt="Dynamic Example" />
            
        </div>
        <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
          <button class="text-red-600 hover:underline" tabindex="-1" type="button" @click="destroy">Delete event</button>
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Update event</loading-button>
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
    event: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        title: this.event.title,
        description: this.event.description,
        location: this.event.location,
        date: this.event.date,
        time: this.event.time,
        image:null
        
      }),
    }
  },
  methods: {
    update() {
      this.form.post(`/admin/events/${this.event.id}`)
    },
    destroy() {
      if (confirm('Are you sure you want to delete this event?')) {
        this.$inertia.delete(`/admin/events/${this.event.id}`)
      }
    },
    handleFileChange(event) {
  const file = event.target.files[0];
  if (file) {
    this.form.image = file; // Assign the file without affecting other fields
  }
},
  },
}
</script>
