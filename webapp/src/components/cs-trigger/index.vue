<script setup lang="ts">
import { Modals, ModalsName } from '@/modals'
</script>

<template>
    <button @click="Modals.open(ModalsName.cs)">
        <slot><van-icon name="service" /></slot>
    </button>
</template>

