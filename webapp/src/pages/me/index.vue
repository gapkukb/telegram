<script setup lang="ts"></script>

<template>
    <div class="grid grid-cols-[56px_auto] grid-rows-2 h-64 items-center gap-6">
        <img
            src="https://fastly.jsdelivr.net/npm/@vant/assets/ipad.jpeg"
            class="size-56 grid-row-span-2 object-cover"
        />
        <h4 class="font-semibold text-16">Player10849931</h4>
        <p
            class="text-#999 inline-flex items-center"
            v-clipboard="8888888888"
        >
            <span>ID：123123</span>
            <i-material-symbols-light:content-copy-outline />
        </p>
    </div>
    <div class="h-8"></div>
    <account-balance>
        <div class="flex gap-16 pt-8">
            <button
                class="me-wallet-button filled"
                @click=""
            >
                {{ $t('app.deposit') }}
            </button>
            <button
                class="me-wallet-button plain"
                @click=""
            >
                {{ $t('app.withdrawal') }}
            </button>
        </div>
    </account-balance>
    <div class="h-16"></div>
    <van-cell-group>
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.turnOver')"
        />
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.account')"
            to="/me/account"
        />
        <van-cell
            is-link
            title-class="font-medium text-primary"
            :title="$t('me.vip')"
        />
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.invite')"
        />
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.collection')"
        />
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.service')"
        />
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.message')"
        />
        <van-cell
            is-link
            title-class="font-medium"
            :title="$t('me.more')"
            to="/me/more"
        />
    </van-cell-group>
</template>

<style lang="scss">
.page-me {
    @apply p-8;
    background: #fff url(./assets/balance-bg.png) no-repeat 50% 0/109%;
}

.me-balance {
    width: 345px;
    height: 135px;
    // --image: url(./assets/balance-bg.png);
    // --bg-op: 0.5;
    border-radius: 8px;
    // background-blend-mode: darken;
    padding: 12px;
    color: white;
    margin: auto;
    background: linear-gradient(-90deg, rgba(rgb(255, 145, 0), 0.9), rgba(#ff5800, 0.9));
    // background-color: rgba(#ff8949, 0.5);
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
