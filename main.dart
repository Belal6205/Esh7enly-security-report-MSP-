import 'package:device_preview/device_preview.dart';
import 'package:esh7enly_app/core/router/app_router.dart';
import 'package:esh7enly_app/core/theme/app_theme.dart';
import 'package:esh7enly_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Esh7enlyApp());
}

class Esh7enlyApp extends StatelessWidget {
  const Esh7enlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Esh7enly',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
