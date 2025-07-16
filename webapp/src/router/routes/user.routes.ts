import type { RouteRecordRaw } from "vue-router";

export default <RouteRecordRaw>{
  name: "userIndex",
  path: "/",
  component: () => import("@/pages/user/UserHomePage.vue"),
  meta: {},
  children: [],
};
