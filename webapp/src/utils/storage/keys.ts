const _keys = {
    app: 'app',
    locale: 'locale',
    search: 'search',
} as const

export type StorageKeys = EnumLike<typeof _keys>

export default _keys
