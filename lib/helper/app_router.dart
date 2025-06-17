import 'package:go_router/go_router.dart';
import 'package:runway_fashion_app/Models/product_model.dart';
import 'package:runway_fashion_app/Views/home_view.dart';
import 'package:runway_fashion_app/Views/men_category_view.dart';
import 'package:runway_fashion_app/Views/product_details_view.dart';
import 'package:runway_fashion_app/Views/splash_view.dart';

class AppRouter {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String menCategoryRoute = '/men';
  static const String productDetailsRoute = '/product';

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
      GoRoute(
        path: menCategoryRoute,
        builder: (context, state) => const MenCategoryView(),
      ),
      GoRoute(
        path: productDetailsRoute,
        builder: (context, state) => ProductDetailsView(
          productModel: state.extra as ProductModel,
        ),
      ),
    ],
  );
}
