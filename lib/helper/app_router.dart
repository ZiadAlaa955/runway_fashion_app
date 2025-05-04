import 'package:go_router/go_router.dart';
import 'package:runway_fashion_app/Views/home_view.dart';
import 'package:runway_fashion_app/Views/splash_view.dart';

class AppRouter {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
