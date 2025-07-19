<script setup lang="ts">
import { doCheckIn, queryCheckin } from '@/api'
import useDelegate from '@/composables/useDelegate'
import { useQuery } from '@tanstack/vue-query'
import dayjs from 'dayjs'
import img1 from './assets/1.png'
import img2 from './assets/2.png'
import img3 from './assets/3.png'
import useStatefulFunc from '@/composables/use-stateful-func'
import { rpx } from '@/utils/rpx'
import { Skeleton2 } from '@/components/skeleton'

const el = useTemplateRef<HTMLDivElement>('track')

const [checkin, checking] = useStatefulFunc(async function () {
    await doCheckIn()
    return refetch()
})


const { data, refetch, isPlaceholderData } = useQuery({
    queryKey: ['checkin_list'],
    queryFn: queryCheckin,
    placeholderData: [],
    select(data) {
        scrollIntoView()
        return data
    },
})

function scrollIntoView() {
    nextTick(() => {
        el.value?.querySelector('.on')?.scrollIntoView({
            behavior: 'instant',
            inline: 'center',
        })
    })
}
</script>

<template>
    <div class="bg-white p-12 rd-8">
        <h5 class="font-semibold text-16">{{ $t('promos.name') }}</h5>

        <!-- <Skeleton2 class="h-96 w-100" width="100" repeatable height="96" item-height="96" item-width="48">
            <rect x="2" y="16" rx="4" width="40" height="64" fill="#ccc" />
            <circle cx="22" cy="34" r="12" />
            <rect x="6" y="54" width="32" height="16" />
        </skeleton2> -->


        <div class="h-96 bg-white flex gap-8 overflow-scroll py-16 scroll-none" ref="track">
            <figure v-for="item in data" :key="item" class="checkin-item" :class="{ on: item.status === 1 }"
                :data-day="item.date">
                <img :src="item.status === 0 ? img1 : item.status === 1 ? img2 : img3" class="size-24" />
                <figcaption class="text-12">{{ dayjs(item.date).format('DD MMM') }}</figcaption>
            </figure>
        </div>
        <van-button type="danger" block :disabled="checking || isPlaceholderData" @click="checkin">
            {{ $t('promos.confirm') }}
        </van-button>
    </div>
</template>

<style lang="scss">
.checkin-item {
    @apply flex-shrink-0 w-40 h-64 bg-#f6f6f6 rd-4 text-center py-6;
    width: 40px;
    height: 64px;
    &.on {
        background-color: #ff5800;
        color: white;
    }
}
</style>
