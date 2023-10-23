enum AuthCodeException {
  emailInUse("email-already-in-use"),
  invalidEmail("invalid-email"),
  operationNotAllowed("operation-not-allowed"),
  weakPassword("weak-password");
  const AuthCodeException(this.value);
  final String value;
}

    // A [FirebaseAuthException] maybe thrown with the following error code:
    // email-already-in-use:
    // Thrown if there already exists an account with the given email address.
    // invalid-email:
    // Thrown if the email address is not valid.
    // operation-not-allowed:
    // Thrown if email/password accounts are not enabled. Enable email/password accounts in the Firebase Console, under the Auth tab.
    // weak-password:
    // Thrown if the password is not strong enough.