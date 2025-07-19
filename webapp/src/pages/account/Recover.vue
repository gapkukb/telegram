<script setup lang="ts">
const otp = ref('')
const password = ref('')
const repassword = ref('')
const phone = ref('')
const byPhone = ref(true)
</script>

<template>
    <header class="sticky top-0 flex p-12 gap-8">
        <button
            class="page-account-button icon"
            @click="$emit('back')"
        >
            <van-icon name="arrow-left" />
        </button>

        <div class="flex-1"></div>

        <CsTrigger class="page-account-button icon" />
    </header>

    <img
        src="/pwa-512x512.png"
        class="size-76 block mx-auto"
    />

    <div class="flex gap-24 justify-center h-45 text-16 my-24 text-#999">
        <button
            class="uppercase"
            :class="{ 'text-primary font-semibold': byPhone }"
            @click="byPhone = true"
        >
            {{ $t('acc.retrieval.phone') }}
        </button>
        <button
            class="uppercase"
            :class="{ 'text-primary font-semibold': !byPhone }"
            @click="byPhone = false"
        >
            {{ $t('acc.retrieval.email') }}
        </button>
    </div>

    <van-form class="px-24 grid gap-16">
        <PhoneNumberInput
            v-if="byPhone"
            v-model="phone"
        />

        <EmailInput
            v-else
            v-model="phone"
        />

        <OtpInput
            v-model="otp"
            :phone="phone"
        />

        <PasswordInput v-model="password" />

        <PasswordInput
            v-model="repassword"
            :password="password"
            is-repeat
        />
        <div class="h-24"></div>
        <van-button
            type="danger"
            class="uppercase"
        >
            {{ $t('confirm') }}
        </van-button>
    </van-form>
</template>

<style lang="scss"></style>
