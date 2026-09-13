import 'package:esh7enly_app/core/router/routes_name.dart';
import 'package:esh7enly_app/feature/auth/data/auth_repository.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_cubit.dart';
import 'package:esh7enly_app/feature/login/presentation/view/login_view.dart';
import 'package:esh7enly_app/feature/register/presentation/view/register_view.dart';
import 'package:esh7enly_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/view/home_view.dart';
import 'package:esh7enly_app/feature/select_car/presentation/view/select_car_view.dart';
import 'package:esh7enly_app/feature/payment/presentation/view/payment_view.dart';
import 'package:esh7enly_app/feature/payment/presentation/view/charging_complete_view.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/sessions_view.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/wallet_view.dart';
import 'package:esh7enly_app/feature/profile/presentation/view/profile_view.dart';
import 'package:esh7enly_app/feature/location/presentation/view/location_view.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutesName.splash,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RoutesName.splash,
        name: 'splash',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RoutesName.login,
        name: 'onboarding',
        builder: (context, state) => BlocProvider(
          create: (_) => AuthCubit(AuthRepository()),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: RoutesName.register,
        name: 'register',
        builder: (context, state) => BlocProvider(
          create: (_) => AuthCubit(AuthRepository()),
          child: const RegisterView(),
        ),
      ),
      GoRoute(
        path: RoutesName.home,
        name: 'home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: RoutesName.selectCar,
        name: 'selectCar',
        builder: (context, state) => const SelectCarView(),
      ),
      GoRoute(
        path: RoutesName.payment,
        name: 'payment',
        builder: (context, state) => const PaymentView(),
      ),
      GoRoute(
        path: RoutesName.chargingComplete,
        name: 'chargingComplete',
        builder: (context, state) => const ChargingCompleteView(),
      ),
      GoRoute(
        path: RoutesName.sessions,
        name: 'sessions',
        builder: (context, state) => const SessionsView(),
      ),
      GoRoute(
        path: RoutesName.wallet,
        name: 'wallet',
        builder: (context, state) => const WalletView(),
      ),
      GoRoute(
        path: RoutesName.profile,
        name: 'profile',
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: RoutesName.location,
        name: 'location',
        builder: (context, state) => const LocationView(),
      ),
    ],
  );
}
