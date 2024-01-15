import 'dart:convert';

import 'package:crypto/crypto.dart';

abstract class Sign {
  const Sign();

  Map<String, dynamic> toMap();

  String generateNonce();

  /// 生成签名
  /// 返回签名[String]和随机字符串[String]
  (String sign, String nonce) toSign() {
    final nonce = generateNonce();
    final items = toMap().entries.map((entry) => entry.value).toList()
      ..add(nonce)
      ..sort();
    final result = sha1.convert(utf8.encode(items.join(''))).toString().toUpperCase();
    return (result, nonce);
  }
}
