import type { useUserStore } from './stores/user.store'
import type { RouteRecordName, Router, RouteLocationRaw, RouteLocationAsRelativeGeneric, NavigationFailure } from 'vue-router'

type Named = (this: Router, to: string | RouteLocationAsRelativeGeneric) => Promise<NavigationFailure | void | undefined>
declare module 'vue-router' {
    interface RouteMeta {
        requiredAuth?: boolean
        title?: string
        keywords?: string
        description?: string
    }

    interface Router {
        pushNamed: Named
        replaceNamed: Named
    }
}

declare module 'vue' {
    interface ComponentCustomProperties {
        $store: {
            user: ReturnType<typeof useUserStore>
        }
    }
}
