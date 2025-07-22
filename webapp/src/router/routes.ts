import type { RouteRecordRaw } from 'vue-router'
import Layout from '@/layout/index.vue'
import Activity from '@/layout/Activity.vue'
import { Modals, ModalsName } from '@/modals'
import { useUser } from '@/stores/user.store'
import View from '@/View.vue'

export default <RouteRecordRaw[]>[
    {
        path: '/',
        name: 'Home',
        meta: {
            footer: true,
        },
        component: () => import('@/pages/home/index.vue'),
        children: [],
    },
    {
        path: '/promos',
        name: 'promos',
        meta: {
            footer: true,
            title: 'Promos',
        },
        component: () => import('@/pages/promos/index.vue'),
    },
    {
        path: '/wallet',
        name: 'wallet',
        component: () => import('@/pages/wallet/index.vue'),
        redirect: '/wallet/deposit',
        meta: {
            footer: true,
            requiredAuth: true,
        },
        children: [
            // {
            //     path: '',
            //     name: 'wallet',
            //     meta: {
            //         footer: true,
            //     },
            //     component: () => import('@/pages/wallet/index.vue'),
            // },
            {
                path: 'deposit',
                name: 'deposit',
                component: () => import('@/pages/wallet/Deposit.vue'),
            },
            {
                path: 'withdrawal',
                name: 'withdrawal',
                component: () => import('@/pages/wallet/Withdrawal.vue'),
            },
        ],
    },
    {
        path: '/wallet/deposit/confirmation',
        name: 'confirmation',
        component: () => import('@/pages/wallet/DepositConfirmation.vue'),
    },
    {
        path: '/wallet/withdrawal/confirmation',
        name: 'confirmation',
        component: () => import('@/pages/wallet/DepositConfirmation.vue'),
    },
    {
        path: '/me',
        // meta: {
        //     footer: true,
        //     title: 'me',
        // },
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
                component: () => import('@/pages/me/Account.vue'),
            },
            {
                path: 'real-name',
                name: 'real-name',
                component: () => import('@/pages/me/real-name/index.vue'),
                meta:{
                    title:"Setup your real name"
                }
            },
        ],
    },
]
