import stores from "@/stores";
import { useUserStore } from "@/stores/user.store";
import { LoginViaTicket, LoginViaToken } from "@/utils/login";
import { platfrom } from "@/utils/platform";
import { initialUrlParams } from "@/utils/url";
import { showToast } from "vant/es";

export async function tryLogin() {
  const user = useUserStore();
  if (user.authenticated) return;

  // glife lazada跳转H5必须携带Token
  if (platfrom.glife || platfrom.lazada) {
    const token = initialUrlParams.get("isInfo");
    const loginName = initialUrlParams.get("loginName");

    if (token && loginName) {
      return new LoginViaToken(token, loginName).login();
    }

    showToast(`Unknown user access`);
    return Promise.reject();
  }

  if (platfrom.app) {
    const ticket = initialUrlParams.get("ticket");
    const loginName = initialUrlParams.get("loginName");

    if (ticket && loginName) {
      return new LoginViaTicket(ticket, loginName).login();
    }
  }
}
