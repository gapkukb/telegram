<script setup lang="ts">
import { queryClainmedList } from '@/api/promos.api';
import { useQuery } from '@tanstack/vue-query';

const show = ref(false)

const { isLoading, data } = useQuery({
    queryKey: ['clainmed_list'],
    queryFn: queryClainmedList,
    enabled: show
})
</script>

<template>
    <button class="absolute right--12 top-12 text-white bg-primary text-12 font-bold px-16 py-4 rd-l-full"
        @click="show = true">
        {{ $t("promos.record") }}
    </button>
    <van-popup v-model:show="show" teleport="body" position="bottom" closeable close-icon="close" class="py-24">
        <h2 class="text-24 px-12">
            <span class="mr-16"> {{ $t("promos.record") }}</span>
            <CustomerService @called="show = false" />
        </h2>
        <p class="text-12  px-12 text-#999">{{ $t("promos.desc") }}</p>
        <div class="h-16"></div>
        <div v-if="data?.length" class="max-h-60vh overflow-auto">
            <van-cell-group :border="true" inset>
                <van-cell v-for="item in data" :title="item.title" :label="item.dateTime" center><span
                        class="text-24 text-primary font-bold">{{ item.amount }}</span></van-cell>

            </van-cell-group>
        </div>
        <van-empty v-else-if="!isLoading" image="error" :description="$t('promos.empty')" />
    </van-popup>
</template>

<style lang="scss" scoped></style>