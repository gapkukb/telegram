const _keys = {
    app: 'app',
    locale: 'locale',
    search: 'search',
    bgm: 'bgm',
} as const

export type StorageKeys = EnumLike<typeof _keys>

export default _keys
