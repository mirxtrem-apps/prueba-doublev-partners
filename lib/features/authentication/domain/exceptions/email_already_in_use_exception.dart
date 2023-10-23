class EmailAlreadyInUseException implements Exception {
  final String message;
  EmailAlreadyInUseException(this.message);
  
  @override
  String toString() {
    return message.toString();
  }
}
