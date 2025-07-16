import { Http, normalizePlugin } from '@/http'

export const glaxy = new Http({ baseURL: '/_glaxy_c66_' })
glaxy.use(normalizePlugin({}))
export const front = glaxy.copyWith({ baseURL: '/_front_api_' })
