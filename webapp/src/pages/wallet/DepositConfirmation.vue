<script setup lang="ts">
import { queryActivities } from '@/api/promos.api';
import useStatefulFunc from '@/composables/use-stateful-func';
import { useBack } from '@/composables/useBack';
import { useQuery } from '@tanstack/vue-query';

const back = useBack()
const { isLoading, data } = useQuery({
    queryKey: ['diposit'],
    queryFn: queryActivities
})

const amount = ref('')

const [todo, doing] = useStatefulFunc(async () => {
    await Promise.delay(1000)
})

</script>

<template>
    <van-nav-bar title="Confirmation" fixed left-arrow @click-left="back">
        <template #right>
            <CustomerService />
        </template>
    </van-nav-bar>

    <div class="h-60"></div>
    <div class="flex items-center">
        <h3 class="font-semibold pl-16 pr-8">Receiving Account</h3>
        <p class="bg-primary bg-op-10 rd-full px-6 py-2 lh-1">
            <van-icon name="info-o" color="#ff5800" />
            <span class="text-primary pl-4 text-12">Transfer here</span>
        </p>
    </div>
    <div class="h-8"></div>

    <van-cell-group>
        <!-- Transfer here -->
        <van-cell title="Recharge Methods">
            <div class="bg-#f5f5f5 rd-full inline-flex items-center py-2 pl-2 pr-4 gap-4">
                <img src="@/assets/images/logo1.png" class="size-24">
                <p class="text-14 font-semibold">KBZpay</p>
            </div>
        </van-cell>
        <van-cell title="Receiving Account">
            <Clipboard text="8888888"><span class="font-semibold">9663804719</span></Clipboard>
        </van-cell>
        <van-cell title=" Amount Due"><span class="text-primary font-bold">5,000.00</span> MMK</van-cell>
    </van-cell-group>

    <div class="px-16">

        <div class="h-16"></div>
        <h3 class="font-semibold">Transaction ID<span class="text-red">(Required)</span></h3>
        <div class="h-8"></div>
        <van-field placeholder="Enter last 6 digits of order" type="digit" maxlength="6"></van-field>
        <div class="h-16"></div>
        <h3 class="font-semibold">Rec Guide</h3>
        <img src="./assets/guide-kbz-pay.jpg" class="block w-full">

    </div>
    <div class="h-76"></div>
    <div class="fixed bottom-0 left-0 right-0 p-16 bg-white">
        <van-button type="danger" block>提交</van-button>
    </div>
</template>

<style lang="scss"></style>