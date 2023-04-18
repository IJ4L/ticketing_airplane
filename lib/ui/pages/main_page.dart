import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costume_button_nav.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget costumeBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CostumeButton(
                img: 'assets/icons/globe.png',
                isSelected: true,
              ),
              CostumeButton(
                img: 'assets/icons/book.png',
                isSelected: false,
              ),
              CostumeButton(
                img: 'assets/icons/credit.png',
                isSelected: false,
              ),
              CostumeButton(
                img: 'assets/icons/setting.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          costumeBottomNavigation(),
        ],
      ),
    );
  }
}
