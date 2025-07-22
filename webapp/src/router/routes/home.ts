import View from '@/View.vue'
import type { RouteRecordRaw } from 'vue-router'

export default <RouteRecordRaw>{
    path: '/',
    name: 'Home',
    meta: {
        footer: true,
    },
    component: () => import('@/pages/home/index.vue'),
    children: [],
}
