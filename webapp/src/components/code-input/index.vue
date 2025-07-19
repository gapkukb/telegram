<script setup lang="ts">
import type { FieldRule } from 'vant'
import { useI18n } from 'vue-i18n'
const value = defineModel<string>({ required: true })

const length = 4
const regexp = new RegExp(`/^\w${length}/$`)
const rules: FieldRule[] = [
    {
        pattern: regexp,
        message: t('form.error.code'),
    },
]
const src = ref('/pwa-512x512.png')
function change() {}
</script>

<template>
    <van-field
        v-model="value"
        class="van-field-solid"
        autocomplete="off"
        autocorrect="off"
        :border="false"
        :placeholder="$t('form.placeholder.code')"
        maxlength="4"
        :rules="rules"
    >
        <template #extra>
            <img
                :src="src"
                class="w-100 h-full absolute inset-0 left-auto rd-e-full"
                @click="change"
            />
        </template>
    </van-field>
</template>

<style lang="scss" scoped></style>
