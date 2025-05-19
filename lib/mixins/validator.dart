import "package:super_plus/helpers/regexp.dart";

class _Validators {
  String? email(String? value) {
    const msg = "Invalid Email";
    if (value == null) return msg;
    return RegExps.email.hasMatch(value) ? null : msg;
  }

  String? phone(String? value) {
    const msg = "Invalid Phone Number";
    if (value == null) return msg;
    return RegExps.phone.hasMatch(value) ? null : msg;
  }

  String? password(String? value) {
    const msg = "Invalid Phone Number";
    if (value == null) return msg;
    return RegExps.phone.hasMatch(value) ? null : msg;
  }
}

mixin Validators {
  final validators = _Validators();
}
