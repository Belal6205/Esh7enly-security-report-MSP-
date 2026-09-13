import 'package:esh7enly_app/core/router/routes_name.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void listenToAuthState(BuildContext context, AuthState state) {
  if (state is AuthSuccess) {
    _showAuthSnackBar(context, state.message, Colors.green, Colors.white);
    Future<void>.delayed(const Duration(milliseconds: 800), () {
      if (context.mounted) context.go(RoutesName.home);
    });
  } else if (state is AuthFailure) {
    if (state.isNetwork) {
      _showAuthSnackBar(
        context,
        state.message,
        const Color(0xFFFBC02D),
        Colors.black,
      );
    } else {
      _showAuthSnackBar(context, state.message, Colors.red, Colors.white);
    }
  }
}

void _showAuthSnackBar(
  BuildContext context,
  String message,
  Color background,
  Color textColor,
) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
        ),
        backgroundColor: background,
        behavior: SnackBarBehavior.floating,
      ),
    );
}
