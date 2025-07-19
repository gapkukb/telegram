<script setup lang="ts">
import { Modals, ModalsName } from '@/modals'
defineEmits(['called'])

</script>

<template>
    <button @click="Modals.open(ModalsName.cs), $emit('called')">
        <slot><van-icon name="service" /></slot>
    </button>
</template>
