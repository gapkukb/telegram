import { createWebHistory, createRouter, type RouteRecordName, type Router, type RouteLocationRaw, type RouteLocationAsRelativeGeneric } from 'vue-router'
import routes from './routes'

import authenticate from './middlewares/auth.middleware'
import modal from './middlewares/modal.middleware'
import TDK from './middlewares/tdk.middleware'
import type { App } from 'vue'

const router = createRouter({
    history: createWebHistory('/'),
    routes,
    scrollBehavior(to, from, savedPosition) {},
})

authenticate(router);
// modal(router);
// TDK(router);

const install = router.install
router.install = function (app: App) {
    Object.defineProperties(router, {
        pushNamed: {
            value(this: Router, to: string | RouteLocationAsRelativeGeneric) {
                if (typeof to === 'string') {
                    return this.push({
                        name: to,
                    })
                }
                return this.push(to)
            },
        },
        replaceNamed: {
            value(this: Router, to: string | RouteLocationAsRelativeGeneric) {
                if (typeof to === 'string') {
                    return this.replace({
                        name: to,
                    })
                }
                return this.replace(to)
            },
        },
    })
    install.call(router, app)
}

export default router
