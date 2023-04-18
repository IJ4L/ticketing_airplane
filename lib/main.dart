import 'package:airplane/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        'get-started': (context) => const GetStartedPage(),
      },
    );
  }
}
