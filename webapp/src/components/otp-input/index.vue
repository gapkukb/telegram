<script setup lang="ts">
import { REGEXP_KM_NUMBER } from '@/constants/regexp'
import type { FieldRule } from 'vant'
import { useI18n } from 'vue-i18n'

const value = defineModel<string>({ required: true })
const props = defineProps<{ phone: string }>()
const length = 6
const regexp = new RegExp(`/^\d${length}/$`)
const rules: FieldRule[] = [
    {
        pattern: regexp,
        message: useI18n().t('validator.otp'),
    },
]
const enable = computed(() => {
    return REGEXP_KM_NUMBER.test(props.phone)
})

const { remaining, isActive, start } = useCountdown(3)

function send() {
    start()
}
</script>

<template>
    <van-field
        v-model="value"
        type="digit"
        class="van-field-solid"
        autocomplete="off"
        autocorrect="off"
        :border="false"
        :placeholder="$t('placeholder.otp')"
        maxlength="4"
        :rules="rules"
    >
        <template #extra>
            <van-button
                :disabled="!enable || isActive"
                type="danger"
                size="mini"
                round
                class="min-w-60"
                @click="send"
            >
                <span
                    v-if="isActive"
                    class="px-12"
                >
                    {{ remaining }} s
                </span>
                <span
                    v-else
                    class="px-12"
                >
                    Send code
                </span>
            </van-button>
        </template>
    </van-field>
</template>

<style lang="scss" ></style>
