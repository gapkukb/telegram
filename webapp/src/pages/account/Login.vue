<script setup lang="ts">
const account = ref('')
const password = ref('')
const code = ref('')
const rememberMe = ref(false)
</script>

<template>
    <van-form class="px-24 grid gap-16">
        <AccountInput v-model="account" />

        <PasswordInput v-model="password" />

        <CodeInput v-model="code" />

        <div class="flex items-center justify-between py-16">
            <van-checkbox
                v-model="rememberMe"
                icon-size="16"
                checked-color="#ff5800"
                class="text-12"
            >
                {{ $t('placeholder.remember') }}
            </van-checkbox>
            <button
                class="text-12 text-primary"
                @click="$emit('forgot')"
            >
                {{ $t('placeholder.forgot') }}
            </button>
        </div>

        <van-button
            type="danger"
            class="uppercase"
        >
            {{ $t('login2') }}
        </van-button>
    </van-form>

    <div class="px-24 pt-24">
        <h2>{{ $t('instructions.title') }}</h2>
        <p class="text-12 text-#666 mt-8">{{ $t('instructions.desc') }}</p>
    </div>
</template>

<style lang="scss"></style>
