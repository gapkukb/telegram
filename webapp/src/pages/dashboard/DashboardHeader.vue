<script setup lang="ts">
import { Modals, ModalsName } from '@/modals'
import DashboardActions from './DashboardActions.vue'

</script>

<template>
    <header class="header fixed top-0 left-0 right-0 z-1 bg-white">
        <div class="flex justify-between items-center h-40 px-12">
            <van-button round type="danger" size="small" @click="Modals.open(ModalsName.locale)">{{ $t('login')
            }}</van-button>
            <DashboardActions />
        </div>
    </header>
</template>

<style lang="scss">
.header {
    height: var(--pt);
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
