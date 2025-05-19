abstract class RegExps {
  static final email = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
  static final phone = RegExp(r"^0?9\d{9}$");
}
