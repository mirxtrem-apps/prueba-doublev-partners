class OperationNotAllowedException implements Exception {
    final String message;
  OperationNotAllowedException(this.message);
  
  @override
  String toString() {
    return message.toString();
  }
}
