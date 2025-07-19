<script setup lang="ts">
import { useLocale } from '@/locales'
import { Modals, ModalsName } from '@/modals'
import { useApp } from '@/stores/app.store'
import { useUser } from '@/stores/user.store'

const { localeName } = useLocale()
const { logout } = useUser()
const app = useApp()
const version = import.meta.env.PACKAGE_VERSION
</script>

<template>
    <van-cell-group>
        <van-cell
            :title="$t('app.lang')"
            is-link
            @click="Modals.open(ModalsName.locale)"
        >
            {{ localeName }}
        </van-cell>

        <van-cell :title="$t('app.version')">V {{ version }}</van-cell>

        <van-cell :title="$t('app.bgm')">
            <van-switch
                v-model="app.unmuted"
                size="18"
            />
        </van-cell>
    </van-cell-group>

    <div class="p-12 w-full mt-24">
        <van-button
            type="danger"
            block
            @click="logout"
        >
            <span class="uppercase text-16 font-medium">{{ $t('app.logout') }}</span>
        </van-button>
    </div>
</template>

<style lang="scss" scoped></style>
