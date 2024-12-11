<template>
  <div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/dashboard">
        <icon name="dashboard" class="mr-2 w-4 h-4" :class="isUrl('dashboard') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('dashboard') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Dashboard</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/events">
        <icon name="events" class="mr-2 w-4 h-4" :class="isUrl('admin/events') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/events') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Events</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/notices">
        <icon name="notice" class="mr-2 w-4 h-4" :class="isUrl('admin/notices') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/notices') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Notices</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/news">
        <icon name="news" class="mr-2 w-4 h-4" :class="isUrl('admin/news') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/news') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">News</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/careers">
        <icon name="career" class="mr-2 w-4 h-4" :class="isUrl('admin/careers') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/careers') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Career</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/mappings">
        <icon name="map" class="mr-2 w-4 h-4" :class="isUrl('admin/mappings') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/mappings') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Mappings</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/messages">
        <icon name="messages" class="mr-2 w-4 h-4" :class="isUrl('admin/messages') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/messages') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Messages</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/sliders">
        <icon name="slider" class="mr-2 w-4 h-4" :class="isUrl('admin/sliders') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/sliders') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Sliders</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/projects">
        <icon name="slider" class="mr-2 w-4 h-4" :class="isUrl('admin/projects') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/projects') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Projects</div>
      </Link>
    </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin/settings">
        <icon name="settings" class="mr-2 w-4 h-4" :class="isUrl('admin/settings') ? 'fill-white' : 'fill-indigo-400 group-hover:fill-white'" />
        <div :class="isUrl('admin/settings') ? 'text-white' : 'text-indigo-300 group-hover:text-white'">Settings</div>
      </Link>
    </div>
  </div>
</template>

<script>
import { Link } from '@inertiajs/vue3'
import Icon from '@/Shared/Icon.vue'

export default {
  components: {
    Icon,
    Link,
  },
  methods: {
    isUrl(...urls) {
      let currentUrl = this.$page.url.substr(1)
      if (urls[0] === '') {
        return currentUrl === ''
      }
      return urls.filter((url) => currentUrl.startsWith(url)).length
    },
  },
}
</script>
