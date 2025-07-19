<script setup lang="ts">
import { queryActivities } from '@/api/promos.api';
import useStatefulFunc from '@/composables/use-stateful-func';
import { useQuery } from '@tanstack/vue-query';

const { isLoading, data: presets } = useQuery({
    queryKey: ['diposit_presets'],
    queryFn: async () => {
        await Promise.delay(1000)
        return [2000, 5000, 10000, 50000, 1000000]
    }
})

const amount = ref('')
const [todo, doing] = useStatefulFunc(async () => {
    await Promise.delay(1000)
})

</script>

<template>
    <div class="grid gap-8">
        <h6 class="pt-16 text-12">Payment Methods</h6>
        <div class="bg-#f5f5f5 rd-full flex items-center py-4 pl-4 gap-8">
            <img src="@/assets/images/logo1.png" class="size-36">
            <p class="text-16 font-semibold">KBZpay</p>
            <span class="text-8 px-4 bg-#FF8E09 lh-14 c-#fff">အများဆုံးလက်ဆောင်2500</span>
        </div>
        <h6 class="pt-16 text-12">Recharge amount</h6>
        <div class="grid gap-8 grid-cols-3">
            <van-button v-for="item in presets" :key="item" type="danger" :plain="item != amount"
                @click="amount = item.toString()">{{ item }}</van-button>
        </div>

        <van-field v-model="amount" class="van-field-solid">
            <template #extra><span class="font-semibold">MMK</span></template>
        </van-field>

        <van-button type="danger" block :disabled="!amount.length || doing" @click="todo">充值</van-button>
        <div class="h-16"></div>
    </div>
</template>

<style lang="scss"></style>