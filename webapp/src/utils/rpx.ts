let r: number
let w = window.innerWidth
export function rpx(n: number | string) {
    r = Number(n)
    if (!r) return n
    return (r / 375) * w
}
