abstract class AuthFailureMapper {
  static String fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'This account has been disabled.';
      case 'user-not-found':
        return 'No account found for this email.';
      case 'wrong-password':
      case 'invalid-credential':
        return 'Email or password is incorrect.';
      case 'email-already-in-use':
        return 'This email is already registered.';
      case 'weak-password':
        return 'Password is too weak.';
      case 'network-request-failed':
        return 'Network error. Check your connection.';
      case 'too-many-requests':
        return 'Too many attempts. Try again later.';
      default:
        return 'Authentication failed. Please try again.';
    }
  }
}

class AuthException implements Exception {
  const AuthException(this.message, {this.isNetwork = false});

  final String message;
  final bool isNetwork;

  factory AuthException.fromCode(String code) {
    return AuthException(
      AuthFailureMapper.fromCode(code),
      isNetwork: code == 'network-request-failed',
    );
  }
}
