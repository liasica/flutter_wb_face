import 'dart:math';

String generateRandomString(int length) {
  const String charset = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  Random random = Random();
  String str = '';

  for (int i = 0; i < length; i++) {
    int randomIndex = random.nextInt(charset.length);
    str += charset[randomIndex];
  }

  return str;
}
