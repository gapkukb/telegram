<script setup lang="ts">
import useBalance from '@/composables/useBalance'
import Checkin from './Checkin.vue';
import Activities from './Activities.vue';
import Record from './Record.vue';

const { balance, refresh, loading } = useBalance()
</script>

<template>
    <div class="p-16 relative">
        <div class="text-12 flex items-center gap-8">
            <span>{{ $t('app.balance') }}</span>
            <button class="lh-1 expand-8" :class="{ spin: loading }" @click="refresh">
                <i-system-uicons:refresh-alt />
            </button>
        </div>
        <h1>
            <span class="text-36 font-bold" v-motion="">
                {{ balance }}
            </span>
            <span class="text-16 pl-4">MMK</span>
        </h1>

        <Record />
    </div>

    <Checkin />

    <div class="h-16"></div>

    <Activities />

    <!-- <Skeleton repeatable fixed item-height="164" class="px-12" fill="#d1d1d1">
        <rect width="100%" height="158" fill="#eee" rx="4" ry="4"/>
        <rect width="100%" height="60" y="98" fill="#e1e1e1"  ry="4"/>
        <rect width="60" height="28" x="303" y="120" rx="14" />
        <rect width="200" height="20" x="8" y="118" />
        <rect width="100" height="14" x="8" y="140" />
    </Skeleton> -->
</template>

<style lang="scss">
.page-promos {
    background: url(./assets/bg.png) no-repeat 0 -16px/100% auto;
    padding: 12px;
}
</style>
