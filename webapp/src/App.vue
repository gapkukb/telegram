<script setup lang="ts">
import Modal from './modals/Modal'
import { useUserStore } from './stores/user.store'
import Announcement from '@/pages/announcement/index.vue'

const user = useUserStore()
</script>

<template>
    <div
        :key="`${user.authenticated}`"
        class="page-view"
        :class="$route.matched.filter((i) => i.name && typeof i.name === 'string').map((i) => `page-${i.name as string}`)"
    >
        <router-view />
    </div>

    <Modal />

    <!-- <audio id="bgMusic" autoplay loop><source src="@/assets/media/game_bg.mp3" type="audio/mpeg" controls="false" /></audio> -->

    <!-- 公告弹窗 -->
    <!-- <Announcement /> -->
</template>
