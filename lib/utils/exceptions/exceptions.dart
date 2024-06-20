/// Exception class for handling various errors.
class GExceptions implements Exception {
  /// The associated error message.
  final String message;

  /// Default constructor with a generic error message.
  const GExceptions(
      [this.message = 'An unexpected error occurred. Please try again.']);

  /// Create an authentication exception from a Firebase authentication exception code.
  factory GExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const GExceptions(
            'The email address is already registered. Please use a different email.');
      case 'invalid-email':
        return const GExceptions(
            'The email address provided is invalid. Please enter a valid email.');
      case 'weak-password':
        return const GExceptions(
            'The password is too weak. Please choose a stronger password.');
      case 'user-disabled':
        return const GExceptions(
            'This user account has been disabled. Please contact support for assistance.');
      case 'user-not-found':
        return const GExceptions('Invalid login details. User not found.');
      case 'wrong-password':
        return const GExceptions(
            'Incorrect password. Please check your password and try again.');
      case 'INVALID_LOGIN_CREDENTIALS':
        return const GExceptions(
            'Invalid login credentials. Please double-check your information.');
      case 'too-many-requests':
        return const GExceptions('Too many requests. Please try again later.');
      case 'invalid-argument':
        return const GExceptions(
            'Invalid argument provided to the authentication method.');
      case 'invalid-password':
        return const GExceptions('Incorrect password. Please try again.');
      case 'invalid-phone-number':
        return const GExceptions('The provided phone number is invalid.');
      case 'operation-not-allowed':
        return const GExceptions(
            'The sign-in provider is disabled for your Firebase project.');
      case 'session-cookie-expired':
        return const GExceptions(
            'The Firebase session cookie has expired. Please sign in again.');
      case 'uid-already-exists':
        return const GExceptions(
            'The provided user ID is already in use by another user.');
      case 'sign_in_failed':
        return const GExceptions('Sign-in failed. Please try again.');
      case 'network-request-failed':
        return const GExceptions(
            'Network request failed. Please check your internet connection.');
      case 'internal-error':
        return const GExceptions('Internal error. Please try again later.');
      case 'invalid-verification-code':
        return const GExceptions(
            'Invalid verification code. Please enter a valid code.');
      case 'invalid-verification-id':
        return const GExceptions(
            'Invalid verification ID. Please request a new verification code.');
      case 'quota-exceeded':
        return const GExceptions('Quota exceeded. Please try again later.');
      default:
        return const GExceptions();
    }
  }
}
