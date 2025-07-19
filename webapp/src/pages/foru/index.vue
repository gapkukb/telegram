<script setup lang="ts">
import { rpx } from '@/utils/rpx'
import Section2 from './Section2.vue'
import img from '../dashboard/assets/images/9.png'
import { useTimeout } from '@vueuse/core'
import usePlayGame from '@/composables/usePlayGame'

const height = rpx(120)
const banners = shallowRef<string[]>([])
const playGame = usePlayGame([1,2,3,4,5])
useTimeout(3000, {
    callback() {
        banners.value = Array.from<string>({ length: 6 }).fill(img)
    },
})
</script>

<template>
    <Skeleton v-if="banners.length === 0" :height="height" />
    <van-swipe v-else :autoplay="3000" indicator-color="white" :height="height">
        <van-swipe-item v-for="item in 5" :key="item">
            <img src="../dashboard/assets/images/9.png" class="size-full object-cover" />
        </van-swipe-item>
    </van-swipe>
    <div class="h-8"></div>
    <Section2 />

    <div class="grid grid-cols-3 gap-8 px-12" @click="playGame">
        <GameCard v-for="(i, index) in 30" :index="index" class="aspect-ratio-70/100 bg-#eee rd-4" />
    </div>
</template>

<style lang="scss"></style>
