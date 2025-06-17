import 'package:flutter/material.dart';
import 'package:runway_fashion_app/helper/app_router.dart';

void main() {
  runApp(const RunwayFashionApp());
}

class RunwayFashionApp extends StatelessWidget {
  const RunwayFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          color: Colors.white,
        ),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
