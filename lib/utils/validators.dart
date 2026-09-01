class Validadors {
  static bool isEmail(String value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(value);
  }

  static bool isPassword(String value) {
    return value.length >= 6;
  }
}
