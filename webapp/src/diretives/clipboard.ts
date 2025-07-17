import { i18n } from '@/locales'
import { showToast } from 'vant'
import type { FunctionDirective } from 'vue'

export default <FunctionDirective<Element, string | number>>function clipboard(el, { value }) {
    const { copy } = useClipboard()
    el.addEventListener('click', (e) => {
        copy('' + value).then(() => showToast(t('copy')))
    })
}
