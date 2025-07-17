<script setup lang="ts">
import { REGEXP_EMAIL } from '@/constants/regexp'
import type { FieldRule } from 'vant'
import { useI18n } from 'vue-i18n'

const value = defineModel<string>()
const rules: FieldRule[] = [
    {
        pattern: REGEXP_EMAIL,
        message: useI18n().t('validator.email'),
    },
]
</script>

<template>
    <van-field
        v-model.trim="value"
        type="email"
        autocomplete="off"
        autocorrect="off"
        class="van-field-solid van-field-email"
        :border="false"
        maxlength="10"
        :placeholder="$t('placeholder.email')"
        :rules="rules"
    >
        <template #left-icon>
            <van-icon
                name="envelop-o"
                class="opacity-50 pr-4"
            />
        </template>
    </van-field>
</template>

<style lang="scss">
.van-field-email {
    .van-field__error-message {
        left: -24px;
    }
}
</style>
