import 'package:airplane/ui/pages/bonus_page.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:airplane/ui/pages/get_started_page.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:airplane/ui/pages/sign_up_page.dart';
import 'package:airplane/ui/pages/succses_checkour_page.dart';
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
      initialRoute: '/detail',
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
        '/detail': (context) => const DetailPage(),
        '/choose-seat': (context) => const ChooseSeatPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/succses-checkout': (context) => const SucssesCheckout(),
      },
    );
  }
}
