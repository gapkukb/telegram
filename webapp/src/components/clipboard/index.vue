<script setup lang="ts">
const props = defineProps<{ text?: string }>()
</script>

<template>
    <button v-clipboard="text" class="inline-flex justify-center items-center">
        <slot></slot>
        <i-material-symbols-light:content-copy-outline />
    </button>
</template>

<style lang="scss" scoped></style>