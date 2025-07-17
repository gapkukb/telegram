<script setup lang="ts">
import Message from './Message.vue';
import Notification from './Notification.vue';

const tab = ref(0)

</script>

<template>

    <van-nav-bar left-arrow left-text="Back" title="Notification" class="notification top-0" style="position: sticky;">
        <template #right>
            <van-badge dot>
                <button class="van-haptics-feedbac text-24" :class="{ 'text-#aaa': tab === 1 }"
                    @click="tab = 0"><i-lets-icons:message-alt-duotone /></button>
            </van-badge>
            <div class="w-16"></div>
            <van-badge dot @click.stop="">
                <!-- Notification -->
                <button class=" van-haptics-feedbac text-18" :class="{ 'text-#aaa': tab === 0 }"
                    @click="tab = 1"><i-tdesign:notification-filled /></button>
            </van-badge>
        </template>
    </van-nav-bar>

    <Message v-if="tab === 0" />

    <Notification v-else />

</template>

<style lang="scss">
.page-notification {
    background-color: #f1f1f1;
    // background-color: #111;
}

.notification .van-nav-bar__right.van-haptics-feedback:active {
    opacity: 1;
}
</style>