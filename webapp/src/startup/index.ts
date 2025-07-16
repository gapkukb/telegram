import { initializeLocale } from '@/locales' 
import { tryLogin } from './tryLogin'

export default async function startup() {
    return Promise.all([tryLogin(), initializeLocale()])
}
