// import DashboardFooter from '../../layout/AppFooter.vue'
import img0 from './assets/images/0.png'
import img1 from './assets/images/1.png'
import img2 from './assets/images/2.png'
import img3 from './assets/images/3.png'
import img4 from './assets/images/4.png'

const Foru = defineAsyncComponent(() => import('@/pages/foru/index.vue'))
const Slot = defineAsyncComponent(() => import('@/pages/slot/index.vue'))
const Fishing = defineAsyncComponent(() => import('@/pages/fishing/index.vue'))
const Poker = defineAsyncComponent(() => import('@/pages/poker/index.vue'))
const Casino = defineAsyncComponent(() => import('@/pages/casino/index.vue'))

export const navs = [
    { name: t('home.foru'), icon: img0, id: 1, component: Foru },
    { name: t('home.slot'), icon: img1, id: 2, component: Slot },
    { name: t('home.fishing'), icon: img2, id: 3, component: Fishing },
    { name: t('home.poker'), icon: img3, id: 4, component: Poker },
    { name: t('home.casino'), icon: img4, id: 5, component: Casino },
]
