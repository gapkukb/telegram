import AbstractLogin from "./AbstractLogin";

export default class LoginViaTicket extends AbstractLogin {
  constructor(public ticket: string, public loginName: string) {
    super();
  }
  login(): Promise<boolean> {
    throw new Error("Method not implemented.");
  }
}
