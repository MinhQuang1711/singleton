class Singleton {
  // private constructor
  Singleton._();
  // instance of Singleton
  static final instance = Singleton._();

  String? title;

  String? initTitle() {
    title = 'Init Title';
    return title;
  }

  String? getTitle() => title;

  void changeTitle(String? newTitle) {
    title = newTitle;
  }
}
