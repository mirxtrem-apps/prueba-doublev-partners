class WeakPasswordException implements Exception {
  final String message;
  WeakPasswordException(this.message);

  @override
  String toString() {
    return message.toString();
  }
}
