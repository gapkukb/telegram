import { defineStore } from 'pinia'
import { computed, ref, shallowReactive, shallowRef } from 'vue'
import { UserModel } from './User'

export const useUserStore = defineStore(
    'user',
    () => {
        const info = shallowRef<UserModel>()
        const authenticated = computed(() => !!info.value?.loginName)
        const token = ref('')
        const webToken = ref('')

        function setInfo(value: any) {
            info.value = value
        }

        function logout() {}

        return { info, authenticated, setInfo, token, webToken, logout }
    }
    // {
    //   persist: {
    //     afterHydrate(context) {
    //       console.log(context);
    //       if (context.store.user) {
    //         context.store.user = new UserModel(context.store.user);
    //       }
    //     },
    //   },
    // }
)
