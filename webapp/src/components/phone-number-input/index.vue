<script setup lang="ts">
import { REGEXP_KM_NUMBER } from '@/constants/regexp'
import type { FieldRule } from 'vant'
import { useI18n } from 'vue-i18n'

const value = defineModel<string>()
const rules: FieldRule[] = [
    {
        pattern: REGEXP_KM_NUMBER,
        message: t('form.error.phone'),
    },
]
</script>

<template>
    <van-field
        v-model.trim="value"
        type="digit"
        class="van-field-solid van-field-phone"
        :border="false"
        maxlength="10"
        :placeholder="$t('form.placeholder.phone')"
        :rules="rules"
    >
        <template #left-icon>
            <CountryPicker changeable />
        </template>
    </van-field>
</template>

<style lang="scss">
.van-field-phone {
    .van-field__error-message {
        left: -42px;
    }
}
</style>
