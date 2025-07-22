import type { Router } from 'vue-router'
import authenticate from './auth.middleware'
import modal from './modal.middleware'
import TDK from './tdk.middleware'

export default function installMiddleware(router: Router) {
    authenticate(router)
    // modal(router);
    // TDK(router);
}
