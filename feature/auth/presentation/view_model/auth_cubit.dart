import 'package:esh7enly_app/core/errors/auth_failure_mapper.dart';
import 'package:esh7enly_app/feature/auth/data/auth_repository.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repository) : super(const AuthInitial());

  final AuthRepository _repository;

  Future<void> login({required String email, required String password}) async {
    emit(const AuthLoading());
    try {
      await _repository.signIn(email: email.trim(), password: password);
      emit(const AuthSuccess('Signed in successfully'));
    } on AuthException catch (e) {
      emit(AuthFailure(e.message, isNetwork: e.isNetwork));
    } catch (_) {
      emit(const AuthFailure('Authentication failed. Please try again.'));
    }
  }

  Future<void> register({
    required String email,
    required String password,
    String? fullName,
  }) async {
    emit(const AuthLoading());
    try {
      await _repository.signUp(
        email: email.trim(),
        password: password,
        fullName: fullName,
      );
      emit(const AuthSuccess('Account created successfully'));
    } on AuthException catch (e) {
      emit(AuthFailure(e.message, isNetwork: e.isNetwork));
    } catch (_) {
      emit(const AuthFailure('Authentication failed. Please try again.'));
    }
  }
}
