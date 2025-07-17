import type { RouteRecordRaw } from 'vue-router'
import Layout from '@/layout/index.vue'
import Activity from '@/layout/Activity.vue'

export default <RouteRecordRaw[]>[
    {
        path: '/',
        children: [
            {
                path: '/',
                name: 'dashboard',
                component: () => import('@/pages/dashboard/index.vue'),
                children: [
                    {
                        path: '',
                        name: 'home',
                        component: () => import('@/pages/home/index.vue'),
                    },
                    {
                        path: 'sports',
                        name: 'sports',
                        component: () => import('@/pages/sports/index.vue'),
                    },
                    {
                        path: 'games',
                        name: 'games',
                        component: () => import('@/pages/games/index.vue'),
                    },
                    {
                        path: 'promos',
                        name: 'promos',
                        component: () => import('@/pages/promos/index.vue'),
                    },
                ],
            },
        ],
    },
    {
        path: '/',
        component: Layout,
        meta: {
            // requiredAuth: true,
        },
        children: [
            {
                path: 'recover',
                name: 'recover',
                component: () => import('@/pages/recover/index.vue'),
                meta: {
                    title: 'recover',
                },
            },
            {
                path: 'change-password',
                name: 'change password',
                component: () => import('@/pages/change-password/index.vue'),
                meta: {
                    title: 'change password',
                },
            },
            {
                path: '/me/more',
                name: 'more',
                component: () => import('@/pages/me/more/index.vue'),
                meta: {
                    title: 'More',
                },
            },
        ],
    },
    {
        path: '/',
        meta: {
            // requiredAuth: true,
        },
        children: [
            {
                path: 'notification',
                name: 'notification',
                component: () => import('@/pages/notification/inde.vue'),
                meta: {
                    title: 'Notification',
                },
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
    {
        path: '/search',
        name: 'search',
        component: () => import('@/pages/search/index.vue'),
        meta: {
            title: 'search',
        },
    },
    {
        path: '/trend',
        name: 'trend',
        component: () => import('@/pages/search/Trend.vue'),
        meta: {
            title: 'trend',
        },
    },
    {
        path: '/login',
        name: 'account',
        component: () => import('@/pages/account/index.vue'),
        meta: {
            title: 'account',
        },
    },
]
