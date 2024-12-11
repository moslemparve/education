<template>
    <ul class="flex pt-2">
        <li class="px-4 py-2  font-semibold text-gray-800 rounded-t text-indigo-600 ">
            <Link class="flex items-center py-3" href="/admin/settings/general">
            <div class="">General</div>
            </Link>
        </li>
        <li
            class="px-4 py-2  font-semibold text-gray-800 rounded-t text-indigo-400 hover:text-indigo-600 hover:border-indigo-500">
            <Link class="flex items-center py-3" href="/admin/settings/social_media">
            <div class="">Social Media</div>
            </Link>
        </li>
        <li
            class="px-4 py-2  font-semibold text-gray-800 rounded-t text-indigo-400 hover:text-indigo-600 hover:border-indigo-500">
            <Link class="flex items-center py-3" href="/admin/settings/statistics">
            <div class="">Statistics and Data</div>
            </Link>
        </li>
        <li
            class="px-4 py-2  font-semibold text-gray-800 rounded-t text-indigo-400 hover:text-indigo-600 hover:border-indigo-500">
            <Link class="flex items-center py-3" href="/admin/settings/about">
            <div class="">About Section</div>
            </Link>
        </li>
        <li
            class="px-4 py-2  font-semibold text-gray-800 rounded-t text-indigo-400 hover:text-indigo-600 hover:border-indigo-500">
            <Link class="flex items-center py-3" href="/admin/settings/mission_vision">
            <div class="">Mission & Vision</div>
            </Link>
        </li>
    </ul>
</template>
<script>
import { Head, Link } from '@inertiajs/vue3'
import Layout from '@/Shared/Layout.vue'

export default {
    components: {
        Head,
        Link,
    },
    layout: Layout,


}
</script>