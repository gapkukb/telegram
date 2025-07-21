<script setup lang="ts">
import { Modals, ModalsName } from '@/modals'
const emit = defineEmits(['called'])

function call() {
    // Modals.open(ModalsName.cs), emit('called')

    alert("跳转客服 ")
}
</script>

<template>
    <button class="lh-[1] text-20" @click="call">
        <!-- <slot><i-icon-park:customer /></slot> -->
        <slot><i-mdi:customer-service /></slot>
    </button>
</template>
