import { get, post } from './_http'

export const login = post('/login')
export const queryOtp = post('/otp')
export const queryUser = get<model.user.User>('/user')
export const refreshBalance = get<number>('/balance')
export const queryCheckin = get('/check-in')
export const doCheckIn = post('/check-in')
