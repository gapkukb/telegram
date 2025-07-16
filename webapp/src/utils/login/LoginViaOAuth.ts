import AbstractLogin from "./AbstractLogin";

export default class LoginViaOAuth extends AbstractLogin {
  #loadFacebookSdk() {}
  login(): Promise<boolean> {
    throw new Error("Method not implemented.");
  }
}
