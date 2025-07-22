import View from '@/View.vue'
import type { RouteRecordRaw } from 'vue-router'

export default <RouteRecordRaw>{
    path: '/me',
    meta: {
        footer: true,
        title: 'me',
        requiredAuth:true,
    },
    component: View,
    children: [
        {
            path: '',
            name: 'me',
            component: () => import('@/pages/me/index.vue'),
        },
        {
            path: 'account',
            name: 'account',
            component: () => import('@/pages/me/account/index.vue'),
        },
        {
            path: 'more',
            name: 'more',
            component: () => import('@/pages/me/more/index.vue'),
        },
        {
            path: 'real-name',
            name: 'realName',
            component: () => import('@/pages/me/real-name/index.vue'),
            meta: {
                title: 'Setup your real name',
            },
        },
        {
            path: 'bind-phone',
            name: 'bindPhone',
            component: () => import('@/pages/me/bind-phone/index.vue'),
        },
        {
            path: 'update-phone',
            name: 'updatePhone',
            component: () => import('@/pages/me/update-phone/index.vue'),
        },
        {
            path: 'update-password',
            name: 'updatePassword',
            component: () => import('@/pages/me/update-password/index.vue'),
        },
        {
            path: 'bind-email',
            name: 'bindEmail',
            meta: {
                title: 'bind Email',
            },
            component: () => import('@/pages/me/bind-email/index.vue'),
        },
        {
            path: 'update-email',
            name: 'updateEmail',
            meta: {
                title: 'Update Email',
            },
            component: () => import('@/pages/me/update-email/index.vue'),
        },
    ],
}
