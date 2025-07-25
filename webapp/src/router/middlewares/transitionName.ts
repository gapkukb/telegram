import type { Router } from 'vue-router'

export default function (router: Router): Router {
    router.afterEach((to, from) => {
        const toDepth = to.path.split('/').length
        const fromDepth = from.path.split('/').length
        to.meta.transition = toDepth < fromDepth ? 'slide-right' : 'slide-left'
    })
    return router
}
