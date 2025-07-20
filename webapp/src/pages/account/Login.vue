<script setup lang="ts">
import { login } from '@/api'


const account = ref('')
const password = ref('')
const code = ref('')
const rememberMe = ref(false)

function doLogin(values:any){
    console.log(values);
    
    login(values)
}
</script>

<template>
    <van-form class="px-24 grid gap-16" @submit="doLogin" validate-first>
        <AccountInput v-model="account" />

        <PasswordInput v-model="password" />

        <CodeInput v-model="code" />

        <div class="flex items-center justify-between py-16">
            <van-checkbox v-model="rememberMe" icon-size="16" checked-color="#ff5800" class="text-12">
                {{ $t('form.placeholder.remember') }}
            </van-checkbox>
            <button class="text-12 text-primary" @click="$emit('forgot')">
                {{ $t('form.placeholder.forgot') }}
            </button>
        </div>

        <van-button type="danger" class="uppercase" native-type="submit">
            {{ $t('app.login') }}
        </van-button>
    </van-form>

    <div class="px-24 pt-24">
        <h2>{{ $t('account.instructions.title') }}</h2>
        <p class="text-12 text-#666 mt-8">{{ $t('account.instructions.desc') }}</p>
    </div>
</template>

<style lang="scss"></style>
