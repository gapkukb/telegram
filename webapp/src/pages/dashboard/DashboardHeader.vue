<script setup lang="ts">
import { Modals, ModalsName } from '@/modals'
import DashboardActions from './DashboardActions.vue'
</script>

<template>
    <header class="header">
        <van-button round type="danger" size="small" @click="Modals.open(ModalsName.login)">
            {{ $t('app.login') }} | {{ $t('app.signup') }}
        </van-button>
        <DashboardActions />
    </header>

    <!-- <div class="van-hairline--bottom h-1"></div> -->
</template>

<style lang="scss">
.header {
    @apply fixed top-0 left-0 right-0 z-1 bg-white flex justify-between items-center h-40 px-12;
    height: var(--pt);
    border-bottom: 1px solid #f5f5f5;
}

.van-tabs__line {
    background-color: #ff5800;

    &::before {
        content: '';
        border: 4px solid transparent;
        border-bottom-color: #ff5800;
        position: absolute;
        bottom: 0;
        left: 50%;
        translate: -50%;
    }
}
</style>
