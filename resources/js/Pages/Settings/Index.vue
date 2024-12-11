<template>
    <div>

        <Head title="Settings" />
        <h1 class="mb-8 text-3xl font-bold">Settings</h1>
        <Tabs/>
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
import Tabs from './Tabs.vue'
export default {
    components: {
        Head,
        Icon,
        Link,
        Tabs,
    },
    layout: Layout,

    data() {
        return {

        }
    },
    watch: {

    },
    methods: {

    },
}
</script>