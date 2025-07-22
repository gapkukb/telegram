import type { RouteRecordRaw } from 'vue-router'

export default <RouteRecordRaw[]>[
    {
        path: '/success/:type',
        name: 'success',
        props: true,
        component: () => import('@/pages/success/index.vue'),
    },
]
