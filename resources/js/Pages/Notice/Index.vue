<template>
    <div>
      <Head title="Notices" />
      <h1 class="mb-8 text-3xl font-bold">Notices</h1>
      <div class="flex items-center justify-between mb-6">
        <search-filter v-model="form.search" class="mr-4 w-full max-w-md" @reset="reset">
      
        </search-filter>
        <Link class="btn-indigo" href="/admin/notices/create">
          <span>Create</span>
          <span class="hidden md:inline">&nbsp;notice</span>
        </Link>
      </div>
      <div class="bg-white rounded-md shadow overflow-x-auto">
        <table class="w-full whitespace-nowrap">
          <thead>
            <tr class="text-left font-bold">
              <th class="pb-4 pt-6 px-6">Title</th>
              <th class="pb-4 pt-6 px-6">Time</th>
              <th class="pb-4 pt-6 px-6" colspan="2">Date</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="event in notices.data" :key="event.id" class="hover:bg-gray-100 focus-within:bg-gray-100">
              <td class="border-t">
                <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/admin/notices/${event.id}/edit`">
                  {{ event.title }}
                </Link>
              </td>
             
              <td class="border-t">
                <Link class="flex items-center px-6 py-4" :href="`/admin/notices/${event.id}/edit`" tabindex="-1">
                  {{ event.time }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4" :href="`/admin/notices/${event.id}/edit`" tabindex="-1">
                  {{ event.date }}
                </Link>
              </td>
              <td class="w-px border-t">
                <Link class="flex items-center px-4" :href="`/admin/notices/${event.id}/edit`" tabindex="-1">
                  <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
                </Link>
              </td>
            </tr>
            <tr v-if="notices.data.length === 0">
              <td class="px-6 py-4 border-t" colspan="4">No notices found.</td>
            </tr>
          </tbody>
        </table>
      </div>
      <pagination class="mt-6" :links="notices.links" />
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
      notices: Object,
    },
    data() {
      return {
        form: {
          search: this.filters.search,
          trashed: this.filters.trashed,
        },
      }
    },
    watch: {
      form: {
        deep: true,
        handler: throttle(function () {
          this.$inertia.get('/admin/notices', pickBy(this.form), { preserveState: true })
        }, 150),
      },
    },
    methods: {
      reset() {
        this.form = mapValues(this.form, () => null)
      },
    },
  }
  </script>
  