// import 'virtual:vite-svg-2-webfont.css';
import 'virtual:uno.css'
import './styles'
import './http/index'
import { createApp } from 'vue'
import stores from './stores'
import bootstrap from './bootstrap'
import App from './App.vue'
import { i18n } from './locales'
import { router } from './router'
import startup from './startup'
import { queryUser, queryUser2 } from './api'

await bootstrap()
const app = createApp(App)
app.use(i18n).use(stores).use(router)
await startup()
app.mount('#app')

queryUser()
queryUser2()
