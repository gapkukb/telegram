<script setup lang="ts">
import { queryActivities } from '@/api/promos.api';
import { useQuery } from '@tanstack/vue-query';

const { isLoading, data } = useQuery({
    queryKey: ['withdraw'],
    queryFn: queryActivities
})
</script>

<template>
    <div class="" v-if="isLoading">Loading</div>
    <van-cell-group v-else>
        <van-cell v-for="i in 10" title="KBZpay" is-link center title-class="pl-8 font-semibold">
            <template #icon>
                <img src="@/assets/images/logo1.png" class="size-36 object-contain">
            </template>

        </van-cell>
    </van-cell-group>
</template>

<style lang="scss"></style>