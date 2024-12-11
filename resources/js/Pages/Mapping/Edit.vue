<template>
  <div>
    <Head :title="form.name" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/admin/mappings">Mapping</Link>
      <span class="text-indigo-400 font-medium">/</span>
      {{ form.name }}
    </h1>
    <div class="bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
            <text-input v-model="form.name" :error="form.errors.name" class="pb-8 pr-6 w-full lg:w-1/2" label="Name" />
            <TextareaInput v-model="form.address" :error="form.errors.address" class="pb-8 pr-6 w-full lg:w-1/2" label="Address" >{{ form.address }}</TextareaInput>
            <text-input v-model="form.lat" :error="form.errors.lat" class="pb-8 pr-6 w-full lg:w-1/2" label="Latitute" />
            <text-input v-model="form.long" :error="form.errors.long" class="pb-8 pr-6 w-full lg:w-1/2"  label="Longitute" />
            <text-input v-model="form.principle" :error="form.errors.principle" class="pb-8 pr-6 w-full lg:w-1/2"  label="Principal" />
            <text-input v-model="form.no_of_student" :error="form.errors.no_of_student" class="pb-8 pr-6 w-full lg:w-1/2" label="Number of student"  type="number"/>
            <text-input v-model="form.contact" :error="form.errors.contact" class="pb-8 pr-6 w-full lg:w-1/2" label="Contact Number"  type="number"/>
            <text-input v-model="form.district" :error="form.errors.district" class="pb-8 pr-6 w-full lg:w-1/2" label="District" />
            <text-input :error="form.errors.image" class="pb-8 pr-6 w-full lg:w-1/2" label="Photo" @change="handleFileChange"  type="file"/>
            <img width="100px" height="40px" :src="'/'+mapping.image_show" alt="Dynamic Example" />
          </div>
        <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
          <button class="text-red-600 hover:underline" tabindex="-1" type="button" @click="destroy">Delete mapping</button>
          <loading-button :loading="form.processing" class="btn-indigo ml-auto" type="submit">Update mapping</loading-button>
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
    mapping: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        name: this.mapping.name,
        address: this.mapping.address,
        lat: this.mapping.lat,
        long: this.mapping.long,
        principle: this.mapping.principle,
        no_of_student :this.mapping.no_of_student,
        contact: this.mapping.contact,
        district: this.mapping.district ,
        image:null
      }),
    }
  },
  methods: {
    update() {
      this.form.post(`/admin/mappings/${this.mapping.id}`)
    },
    handleFileChange(event) {
  const file = event.target.files[0];
  if (file) {
    this.form.image = file; // Assign the file without affecting other fields
  }
},
    destroy() {
      if (confirm('Are you sure you want to delete this mapping?')) {
        this.$inertia.delete(`/admin/mappings/${this.mapping.id}`)
      }
    },
  },
}
</script>
