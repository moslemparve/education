<template>
    <div>
      <Head title="Mappings" />
      <h1 class="mb-8 text-3xl font-bold">Mappings</h1>
      <div class="flex items-center justify-between mb-6">
        <search-filter v-model="form.search" class="mr-4 w-full max-w-md" @reset="reset">
      
        </search-filter>
       
       
        <Link class="btn-indigo" href="/admin/mappings/create">
          <span>Create</span>
          <span class="hidden md:inline">&nbsp;School</span>
        </Link>
      </div>
     
      <div class="bg-white rounded-md shadow overflow-x-auto">
        <table class="w-full whitespace-nowrap">
          <thead>
            <tr class="text-left font-bold">
              <th class="pb-4 pt-6 px-6">name</th>
              <th class="pb-4 pt-6 px-6">address</th>
              <th class="pb-4 pt-6 px-6">principle</th>
              <th class="pb-4 pt-6 px-6" colspan="2">Number Of Student</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="mapping in mappings.data" :key="mapping.id" class="hover:bg-gray-100 focus-within:bg-gray-100">
              <td class="border-t">
                <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/admin/mappings/${mapping.id}/edit`">
                  {{ mapping.name }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4" :href="`/admin/mappings/${mapping.id}/edit`" tabindex="-1">
                  {{ mapping.address }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4" :href="`/admin/mappings/${mapping.id}/edit`" tabindex="-1">
                  {{ mapping.principle }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4" :href="`/admin/mappings/${mapping.id}/edit`" tabindex="-1">
                  {{ mapping.no_of_student }}
                </Link>
              </td>
              <td class="w-px border-t">
                <Link class="flex items-center px-4" :href="`/admin/mappings/${mapping.id}/edit`" tabindex="-1">
                  <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
                </Link>
              </td>
            </tr>
            <tr v-if="mappings.data.length === 0">
              <td class="px-6 py-4 border-t" colspan="4">No mappings found.</td>
            </tr>
          </tbody>
        </table>
      </div>
      <pagination class="mt-6" :links="mappings.links" />
    </div>
  </template>
  
  <script>
  import { Head, Link } from '@inertiajs/vue3'
  import Icon from '@/Shared/Icon.vue'
  import pickBy from 'lodash/pickBy'
  import Layout from '@/Shared/Layout.vue'
  import throttle from 'lodash/throttle'
  import mapValues from 'lodash/mapValues'
  import Pagination from '@/Shared/Pagination.vue'
  import SearchFilter from '@/Shared/SearchFilter.vue'
  
  export default {
    components: {
      Head,
      Icon,
      Link,
      Pagination,
      SearchFilter,
    },
   
    layout: Layout,
    props: {
      filters: Object,
      mappings: Object,
    },
    data() {
      return {
        form: {
          search: this.filters.search,
          trashed: this.filters.trashed,
        },
        isModalOpen: false,
      }
    },
    watch: {
      form: {
        deep: true,
        handler: throttle(function () {
          this.$inertia.get('/admin/mappings', pickBy(this.form), { preserveState: true })
        }, 150),
      },
    },
    methods: {
      reset() {
        this.form = mapValues(this.form, () => null)
      }
    },
  }
  </script>
  