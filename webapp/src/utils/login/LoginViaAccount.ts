import AbstractLogin from "./AbstractLogin";

export default class LoginViaAccount extends AbstractLogin {
  login(): Promise<boolean> {
    throw new Error("Method not implemented.");
  }
}
