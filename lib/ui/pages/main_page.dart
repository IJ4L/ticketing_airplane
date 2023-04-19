import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costume_button_nav.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/destination_card.dart';

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
              CostumeButton(img: 'assets/icons/globe.png', isSelected: true),
              CostumeButton(img: 'assets/icons/book.png', isSelected: false),
              CostumeButton(img: 'assets/icons/credit.png', isSelected: false),
              CostumeButton(img: 'assets/icons/setting.png', isSelected: false),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Image.asset(
                    "assets/images/profile.png",
                    width: 70,
                    height: 70,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Where to fly today?',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
              const Destinationcard(),
              const DestinationTile(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(child: header()),
          costumeBottomNavigation(),
        ],
      ),
    );
  }
}
