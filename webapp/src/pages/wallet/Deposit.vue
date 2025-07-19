<script setup lang="ts">
import { queryActivities } from '@/api/promos.api';
import { useQuery } from '@tanstack/vue-query';
import DepositForm from './DepositForm.vue';

const { isLoading, data } = useQuery({
    queryKey: ['diposit'],
    queryFn: queryActivities
})

const channle = ref(true)

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

    <VanPopup :show="channle" position="bottom" title="Recharge Details" closeable class="pt-14 px-12">
        <div class="flex justify-between items-center pr-24">
            <h6 class="font-semibold text-16">Recharge Details</h6>
            <CustomerService class="text-18 px-16" />
        </div>
        <DepositForm />
    </VanPopup>
</template>

<style lang="scss"></style>