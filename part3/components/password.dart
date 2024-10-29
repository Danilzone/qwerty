import 'dart:math';

class PasswordGenerator {
  String generate(int length) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*()_+{}[]|-=?~<>.,;:/';
    const charLen = chars.length;
    String password = '';
    for (int i = 0; i < length; i++) {
      password += chars[Random().nextInt(charLen)];
    }
    return password;
  }
}
