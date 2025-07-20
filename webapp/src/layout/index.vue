<script setup lang="ts">
import { useBack } from '@/composables/useBack'
import AppFooter from './AppFooter.vue';
const back = useBack()
</script>

<template>
    <!-- <van-nav-bar :title="$route.meta.title" left-arrow style="position: sticky" @click-left="back" /> -->
    <router-view />
    <AppFooter />
</template>
