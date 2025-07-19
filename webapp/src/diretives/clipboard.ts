import type { FunctionDirective } from 'vue'
import { showToast } from 'vant'
import { useClipboard } from '@vueuse/core'

export default <FunctionDirective<Element, string | number | undefined>>function clipboard(el, { value }) {
    const { copy } = useClipboard()
    el.addEventListener('click', (e) => {
        if (value === null || value === undefined) return
        copy('' + value).then(() => showToast(t('app.copy')))
    })
}
