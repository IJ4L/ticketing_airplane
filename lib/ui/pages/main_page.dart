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
              CostumeButton(img: 'assets/icons/globe.png', isSelected: true),
              CostumeButton(img: 'assets/icons/book.png', isSelected: false),
              CostumeButton(img: 'assets/icons/credit.png', isSelected: false),
              CostumeButton(img: 'assets/icons/setting.png', isSelected: false),
            ],
          ),
        ),
      );
    }

    Widget location() {
      List<String> place = [
        'Lake Ciliwung',
        'White Houses',
        'Hill Heyo',
        'Menarra',
        'Payung Teduh',
      ];

      List<String> country = [
        'Tangerang',
        'Spain',
        'Monaco',
        'Japan',
        'Singapore',
      ];
      return Container(
        height: 323,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        margin: const EdgeInsets.only(top: 30),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      child: Image.asset(
                        "assets/images/img${index + 1}.png",
                        width: 180.0,
                        height: 220.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultRadius),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: kOrangeColor,
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              '4.7',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                Text(
                  place[index],
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  country[index],
                  style: greyTextStyle.copyWith(fontWeight: light),
                )
              ],
            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(width: 20),
          itemCount: 5,
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
              location(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          costumeBottomNavigation(),
          header(),
        ],
      ),
    );
  }
}
