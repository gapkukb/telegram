import { front, glaxy } from './_http'

export const mock = () => Promise.delay(1000)
export const queryUser = front.get('/adf')
export const queryUser2 = glaxy.get('/adf')
