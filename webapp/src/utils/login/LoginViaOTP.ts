import AbstractLogin from "./AbstractLogin";

export default class LoginViaOTP extends AbstractLogin {
  login(): Promise<boolean> {
    throw new Error("Method not implemented.");
  }
}
