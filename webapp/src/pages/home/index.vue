<script setup lang="ts">
// import DashboardFooter from '../../layout/AppFooter.vue'
import type { SwipeInstance } from 'vant';
import HomeHeader from './HomeHeader.vue'
import { navs } from './navs';
import Test from './Test.vue';

const swiper = ref<SwipeInstance>()
const active = ref(0)


function onchange(index: number) {
    active.value = index
}

</script>

<template>
    <HomeHeader :active="active" @change="onchange" />
    <van-swipe key="1" ref="swiper" id="home-page-swipe" lazy-render :loop="false" @change="onchange"
        :show-indicators="false">
        <van-swipe-item v-for="item in navs">
            <component :is="Test" />
        </van-swipe-item>
    </van-swipe>
</template>

<style lang="scss">
.page-home {
    height: 100%;
    overflow-y: auto;
    --h-topbar: 40px;
    --h-navbar: 44px;
    --h-header: calc(var(--h-topbar) + var(--h-navbar));
    --h-footer: 44px;
}

#home-page-swipe {
    // position: absolute;
    // left: 0;
    // top: 0;
    // right: 0;
    // bottom: 0;
    height: 100dvh;
}

#tabnav .van-tabs__wrap {
    position: sticky;
    width: 100%;
    top: var(--h-nav-bar);
    z-index: 1;
}
</style>
