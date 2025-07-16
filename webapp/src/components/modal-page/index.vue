<script setup lang="ts">
import { useAsyncVisible } from '@/composables/useAsyncVisible'
const visible = useAsyncVisible()

defineOptions({
    inheritAttrs:false
})
</script>

<template>
    <van-popup v-model:show="visible" close-icon="close" closeable v-on="$attrs" v-bind="$attrs">
        <slot />
    </van-popup>
</template>

<style lang="scss" scoped></style>
