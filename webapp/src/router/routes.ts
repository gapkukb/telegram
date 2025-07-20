import type { RouteRecordRaw } from 'vue-router'
import Layout from '@/layout/index.vue'
import Activity from '@/layout/Activity.vue'
import { Modals, ModalsName } from '@/modals'
import { useUser } from '@/stores/user.store'

export default <RouteRecordRaw[]>[
    {
        path: '/',
        component: Layout,
        children: [
            {
                path: '',
                name: 'Home',
                component: () => import('@/pages/home/index.vue'),
                children: [],
            },
            {
                path: '/bouns',
                name: 'Bouns',
                component: () => import('@/pages/promos/index.vue'),
            },
            {
                path: '/wallet',
                name: 'wallet',
                component: () => import('@/pages/wallet/index.vue'),
                children: [],
            },
            {
                path: 'me',
                name: 'me',
                component: () => import('@/pages/me/index.vue'),
                meta: {
                    title: 'me',
                },
            },
        ],
    },
]
