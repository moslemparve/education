<template>
  <div>
    <Head :title="form.from" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/messages">message</Link>
      <span class="text-indigo-400 font-medium">/</span>
      {{ form.from }}
    </h1>
    <div class="bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.from" :error="form.errors.from" class="pb-8 pr-6 w-full lg:w-1/2" label="From" />
            <text-input v-model="form.designation" :error="form.errors.designation" class="pb-8 pr-6 w-full lg:w-1/2" label="Designation" />
            <TextareaInput v-model="form.detail" :error="form.errors.detail" class="pb-8 pr-6 w-full lg:w-1/2" label="Detail" >{{ form.detail }}</TextareaInput>
            <text-input :error="form.errors.photo" class="pb-8 pr-6 w-full lg:w-1/2" label="Photo" @change="handleFileChange"  type="file"/>
            <img width="100px" height="40px" :src="'/'+message.image_show" alt="Dynamic Example" />
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
    message: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        from: this.message.from,
        designation: this.message.designation,
        detail: this.message.detail,
        photo: null,
       
      }),
    }
  },
  methods: {
    update() {
      this.form.post(`/admin/messages/${this.message.id}`)
    },
    handleFileChange(event) {
  const file = event.target.files[0];
  if (file) {
    this.form.photo = file; // Assign the file without affecting other fields
  }
},
    destroy() {
      if (confirm('Are you sure you want to delete this message?')) {
        this.$inertia.delete(`/admin/messages/${this.message.id}`)
      }
    },
  },
}
</script>
