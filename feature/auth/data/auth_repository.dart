import 'package:esh7enly_app/core/errors/auth_failure_mapper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  AuthRepository({FirebaseAuth? firebaseAuth})
    : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AuthException.fromCode(e.code);
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
    String? fullName,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final name = fullName?.trim();
      if (name != null && name.isNotEmpty) {
        await credential.user?.updateDisplayName(name);
      }
    } on FirebaseAuthException catch (e) {
      throw AuthException.fromCode(e.code);
    }
  }
}
