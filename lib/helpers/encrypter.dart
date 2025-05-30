import 'dart:convert';

import 'package:encrypt/encrypt.dart' as encrypt;

abstract class Encrypter {
  static String aes(Object source, [final secretKey = 'XwKsGlMcdPMEhR1B']) {
    if (source is! String) {
      source = jsonEncode(source);
    }

    final key = encrypt.Key.fromUtf8(secretKey);
    final iv = encrypt.IV.fromLength(16);

    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.ecb),
    );

    final encrypted = encrypter.encrypt(source, iv: iv);
    return encrypted.base64;
  }
}
