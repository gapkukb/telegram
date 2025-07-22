<script setup lang="ts">
import useLoadMore from '@/composables/useLoadMore'

const { loadMore, vIntersect: vOb } = useLoadMore(() => {
    alert('more')
})
</script>

<template>
    <div
        class="p-2 sticky top--5 z-10 rd-full bg-white"
        style="border: 2px solid #ff5800; box-shadow: white 20px 0 0 0, white -20px 0 0 0"
        @touchstart.stop=""
    >
        <div class="slot-tabs">
            <div class="slot-tab on">KA Slot</div>
            <div class="slot-tab">KA Slot</div>
            <div class="slot-tab">KA Slot</div>
            <div class="slot-tab">KA Slot</div>
            <div class="slot-tab">KA Slot</div>
            <div class="slot-tab">KA Slot</div>
        </div>
    </div>

    <GameTable
        class="bg-white p-12"
        list-class="grid-cols-3 gap-8"
        title="Most Popular"
    />

    <div
        v-ob="loadMore"
        class="h-1"
    ></div>
</template>

<style lang="scss">
.slot-tabs {
    background-color: #fff;
    border-radius: 40px;
    @apply flex overflow-auto gap-8 text-10;
}

.slot-tab {
    @apply flex-shrink-0 px-12 lh-20;

    &.on {
        background-color: #ff5800;
        color: white;
        border-radius: 40px;
    }
}
</style>
