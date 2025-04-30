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
      routerConfig: AppRouter.router,
    );
  }
}
