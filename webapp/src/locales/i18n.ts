import { createI18n, type I18n } from 'vue-i18n'
import { ls } from '@/utils/storage'
import { Locale as Vant } from 'vant'
import enUS from 'vant/es/locale/lang/en-US'
import kmKH from 'vant/es/locale/lang/km-KH'

Vant.use('en-US', enUS)

export enum Locales {
    en = 'en',
    km = 'km',
}

export const localesList = [Locales.en, Locales.km] as const

const defaultLocale = import.meta.env.DEV ? Locales.en : Locales.km

const locale = ls.get(ls.keys.locale, defaultLocale)

export const i18n = createI18n({
    locale,
    fallbackLocale: Locales.km,
})

export async function setLocale(locale: Locales) {
    i18n.global.locale = locale
    const messages = await import(/* webpackChunkName: "locale-[request]" */ `./messages/${locale}.json`)
    i18n.global.setLocaleMessage(locale, messages.default)
    ls.set(ls.keys.locale, locale)

    setVantLocale(locale)
    document.documentElement.setAttribute('lang', locale)
}

export function initializeLocale() {
    return setLocale(locale)
}

export function useLocale() {
    const locales = [
        { code: Locales.km, label: '高棉语' },
        { code: Locales.en, label: 'English' },
    ]

    const locale = ref(i18n.global.locale)

    return {
        locale,
        locales,
        setLocale,
    }
}

function setVantLocale(locale: Locales) {
    const lang = {
        [Locales.en]: enUS,
        [Locales.km]: kmKH,
    }[locale]

    Vant.use(locale, lang)
}
