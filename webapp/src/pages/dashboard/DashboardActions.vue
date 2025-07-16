<script setup lang="ts">
import { Modals, ModalsName } from '@/modals'
</script>

<template>
    <div class="flex items-center flex-gap-4">
        <van-button size="mini" round plain @click="Modals.open(ModalsName.cs)"><i-lsicon:service-outline /></van-button>
        <van-button size="mini" round plain icon="search" to="/search"></van-button>
        <van-button size="mini" round type="danger" to="/wallet/deposit">{{ $t('deposit') }}</van-button>
        <van-button size="mini" round type="warning" to="/wallet/withdrawal">{{ $t('withdrawal') }}</van-button>
    </div>
</template>
