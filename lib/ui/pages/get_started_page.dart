import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/costume_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fly Like a Bird',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Explore new world with us and let yourself get an amazing experiences',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const CostumeButton(title: 'Get Started ', route: '/sign-up'),
                  const SizedBox(height: 50.0),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
