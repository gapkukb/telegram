<script setup lang="ts">
import { REGEXP_PASSWORD } from '@/constants/regexp'
import type { FieldRule } from 'vant'
import { useI18n } from 'vue-i18n'

interface FieldPwd extends FieldRule {
    placeholder: string
}
const value = defineModel<string>({ required: true })
const props = defineProps<{ isRepeat?: boolean; password?: string }>()

const { t } = useI18n()
const visible = ref(false)
const rule = computed<FieldPwd>(() => {
    if (props.isRepeat) {
        return {
            placeholder: t('form.placeholder.repassword'),
            validator(value) {
                if (value !== props.password) {
                    return t('form.error.repassword')
                }
            },
        } as FieldPwd
    }

    return {
        placeholder: t('form.placeholder.password'),
        pattern: REGEXP_PASSWORD,
        message: t('form.error.password'),
    }
})
</script>

<template>
    <van-field
        v-model="value"
        class="van-field-solid"
        autocomplete="off"
        autocorrect="off"
        clearable
        maxlength="16"
        :border="false"
        :type="visible ? 'text' : 'password'"
        :placeholder="rule.placeholder"
        :rules="[rule]"
    >
        <template #extra>
            <button
                class="m-auto lh-1 pl-6"
                @click="visible = !visible"
            >
                <van-icon
                    :name="visible ? 'eye-o' : 'closed-eye'"
                    size="20"
                    color="#999"
                />
            </button>
        </template>
    </van-field>
</template>

<style lang="scss" scoped></style>
