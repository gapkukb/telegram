<script setup lang="ts">
import MdiLightGift from '~icons/mdi-light/gift'
import ArcticonsPoker from '~icons/arcticons/poker'
import IconoirWallet from '~icons/iconoir/wallet'
import HugeiconsFire from '~icons/hugeicons/fire'
import MdiLightAccount from '~icons/mdi-light/account'
import { useI18n } from 'vue-i18n'
const { t } = useI18n()
const navs = [
    { name: t('home'), icon: ArcticonsPoker, id: 1, routePath: '/' },
    { name: t('bonus'), icon: MdiLightGift, id: 2, routePath: '/promos' },
    { name: t('wallet'), icon: IconoirWallet, id: 3, routePath: '/wallet' },
    { name: t('hot'), icon: HugeiconsFire, id: 4, routePath: '/hot' },
    { name: t('me'), icon: MdiLightAccount, id: 4, routePath: '/me' },
]
</script>

<template>
    <footer class="footer">
        <router-link v-for="nav in navs" :key="nav.name" :to="nav.routePath" tag="button" class="footer-nav">
            <component :is="nav.icon" :class="{ 'text-20 -m-3': nav.id === 1 }" />
            <span class="text-12">{{ nav.name }}</span>
        </router-link>
    </footer>
</template>

<style lang="scss">
.footer {
    @apply fixed flex bottom-0 bg-white w-full justify-around z-1;
    height: var(--pb);
    border-top: 1px solid #eee;
}

.footer-nav {
    @apply inline-grid place-items-center place-content-center;
    &.router-link-exact-active {
        color: #ff5800;
    }
}
</style>
