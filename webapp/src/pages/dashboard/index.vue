<script setup lang="ts">
import DashboardFooter from './DashboardFooter.vue'
import DashboardHeader from './DashboardHeader.vue'
import { useI18n } from 'vue-i18n'
import img0 from './assets/images/0.png'
import img1 from './assets/images/1.png'
import img2 from './assets/images/2.png'
import img3 from './assets/images/3.png'
import img4 from './assets/images/4.png'
import { rpx } from '@/utils/rpx'

const Foru = defineAsyncComponent(() => import('@/pages/foru/index.vue'))
const Slot = defineAsyncComponent(() => import('@/pages/slot/index.vue'))
const Fishing = defineAsyncComponent(() => import('@/pages/fishing/index.vue'))
const Poker = defineAsyncComponent(() => import('@/pages/poker/index.vue'))
const Casino = defineAsyncComponent(() => import('@/pages/casino/index.vue'))

const { t } = useI18n()
const active = ref(0)
const navs = [
    { name: t('foru'), icon: img0, id: 1, component: Foru },
    { name: t('slot'), icon: img1, id: 2, component: Slot },
    { name: t('fishing'), icon: img2, id: 3, component: Fishing },
    { name: t('poker'), icon: img3, id: 4, component: Poker },
    { name: t('casino'), icon: img4, id: 5, component: Casino },
]
</script>

<template>
    <DashboardHeader />
    <van-tabs
        v-model:active="active"
        swipeable
        line-height="1"
        id="tabnav"
    >
        <van-tab
            v-for="item in navs"
            :key="item.id"
        >
            <template #title>
                <div class="inline-grid place-items-center gap-2">
                    <img
                        :src="item.icon"
                        class="size-20"
                    />
                    <span class="text-12 lh-12">{{ item.name }}</span>
                </div>
            </template>
            <component :is="item.component" />
        </van-tab>
    </van-tabs>
    <DashboardFooter />
</template>

<style lang="scss">
.page-dashboard {
    --pb: 48px;
    --pt: 40px;
    padding-bottom: var(--pb);
    padding-top: var(--pt);
}
#tabnav .van-tabs__wrap {
    position: sticky;
    top: var(--pt);
    z-index: 1;
}
</style>
