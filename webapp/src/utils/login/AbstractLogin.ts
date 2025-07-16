import { useUserStore } from "@/stores/user.store";

export default abstract class AbstractLogin {
  protected setUserInfo(json: any) {
    const user = useUserStore();
    user.setInfo(json);
  }
  
  abstract login(): Promise<boolean>;
}
