<script setup lang="ts">
import { useLs } from '@/composables';
import { useLocale } from '@/locales';
import { Modals, ModalsName } from '@/modals';
import { useUserStore } from '@/stores/user.store';
import { ls } from '@/utils/storage';

const { localeName } = useLocale()
const { logout } = useUserStore()
const bgm = useLs(ls.keys.bgm, true)
const version = import.meta.env.PACKAGE_VERSION 
</script>

<template>
    <van-cell-group>
        <van-cell title="Language" is-link @click="Modals.open(ModalsName.locale)">{{ localeName }}</van-cell>
        <van-cell title="Current version">V {{ version }}</van-cell>
        <van-cell title="Background music"><van-switch v-model="bgm" size="18" /></van-cell>
    </van-cell-group>

    <div class="p-12 w-full">
        <van-button type="danger" block @click="logout">
            <span class="uppercase text-16 font-medium">log out</span>
        </van-button>
    </div>
</template>

<style lang="scss" scoped></style>