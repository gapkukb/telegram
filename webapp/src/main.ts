// import 'virtual:vite-svg-2-webfont.css';
import 'virtual:uno.css'
import './styles'
import './http/index'
import { createApp } from 'vue'
import { VueQueryPlugin } from '@tanstack/vue-query'
import { MotionPlugin } from '@vueuse/motion'
import stores from './stores'
import bootstrap from './bootstrap'
import App from './App.vue'
import { i18n } from './locales'
import { router } from './router'
import startup from './startup'
import diretives from './diretives'
import { Lazyload } from 'vant'

await bootstrap()
const app = createApp(App)
app.use(stores).use(VueQueryPlugin).use(i18n).use(router).use(diretives).use(MotionPlugin).use(Lazyload)
await startup()
app.mount('#app')
