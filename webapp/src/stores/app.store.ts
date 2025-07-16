import { defineStore } from "pinia";
import { ref } from "vue";

export const useApp = defineStore(
  "app",
  function () {
    const keepAlives = ref(new Set<string>());
    return { keepAlives };
  },
  { persist: {} }
);
