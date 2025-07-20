<script setup lang="ts">
import Modal from './modals/Modal'
import { useApp } from './stores/app.store'
import { useUser } from './stores/user.store'
import Announcement from '@/pages/announcement/index.vue'
import { rpx } from './utils/rpx'

const user = useUser()

</script>

<template>
    <div :key="`${user.authenticated}`" class="page-view"
        :class="$route.matched.filter((i) => i.name && typeof i.name === 'string').map((i) => `page-${(i.name as string).toLowerCase()}`)">
        <router-view />
    </div>

    <!-- 公告弹窗 -->
    <!-- <Announcement /> -->
    <!-- 各类弹窗页面 -->
    <Modal />
    <!-- 背景音乐 -->
    <!-- <BGM /> -->

    <van-floating-bubble axis="y" :gap="{ x: 0, y: rpx(200) }"
        style="border-radius: 4px;background: #ddd;width: fit-content;height: fit-content;padding: 4px 6px;"><img
            src="@/assets/images/app-download.gif" class="w-24 block"></van-floating-bubble>
</template>
