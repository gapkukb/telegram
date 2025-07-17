<script setup lang="ts">
</script>

<template>
    <div class="h-16"></div>
    <div class="grid grid-cols-[56px_auto] grid-rows-2 h-64 p-12 items-center gap-6">
        <img src="https://fastly.jsdelivr.net/npm/@vant/assets/ipad.jpeg" class="size-56 grid-row-span-2 object-cover">
        <h4 class="font-semibold text-16">Player10849931</h4>
        <p class="text-#999 inline-flex items-center" v-clipboard="8888888888">
            <span>ID：123123</span>
            <i-material-symbols-light:content-copy-outline />
        </p>
    </div>
    <div class="h-8"></div>
    <div class="me-balance">
        <div class="text-12 flex items-center gap-8">
            <span>Account Balance</span>
            <button class="lh-1 expand-8"> <i-system-uicons:refresh-alt /></button>
        </div>
        <h1>
            <span class="text-36 font-bold">0.00</span>
            <span class="text-16 pl-4">MMK</span>
        </h1>
        <div class="flex gap-16 pt-8">
            <button class="me-wallet-button filled" @click="">Deposit</button>
            <button class="me-wallet-button plain" @click="">Withdrawal</button>
        </div>
    </div>
    <div class="h-16"></div>
    <van-cell-group>
        <van-cell is-link title-class="font-medium" title="Account"></van-cell>
        <van-cell is-link title-class="font-medium text-primary" title="VIP Club"></van-cell>
        <van-cell is-link title-class="font-medium" title="Invite Friends"></van-cell>
        <van-cell is-link title-class="font-medium" title="My collection"></van-cell>
        <van-cell is-link title-class="font-medium" title="Service"></van-cell>
        <van-cell is-link title-class="font-medium" title="Message"></van-cell>
        <van-cell is-link title-class="font-medium" title="More" to="/me/more"></van-cell>

    </van-cell-group>
</template>

<style lang="scss">
.page-me {
    // @apply p-12;
}

.me-balance {
    width: 345px;
    height: 135px;
    background: rgba(0, 0, 0, 0.3) url(./assets/balance-bg.png) no-repeat 0/cover;
    border-radius: 8px;
    background-blend-mode: darken;
    padding: 12px;
    color: white;
    margin: auto;
}

.me-wallet-button {
    @apply h-32 rd-full lh-1 flex-1 color-#ff5800;



    &.filled {
        @apply bg-current;

        &:first-line {
            color: white;
        }
    }

    &.plain {
        @apply bg-white;

        &:first-line {
            color: currentColor;
        }
    }
}
</style>