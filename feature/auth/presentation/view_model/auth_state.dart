sealed class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthSuccess extends AuthState {
  const AuthSuccess([this.message = 'Authentication successful']);

  final String message;
}

class AuthFailure extends AuthState {
  const AuthFailure(this.message, {this.isNetwork = false});

  final String message;
  final bool isNetwork;
}
