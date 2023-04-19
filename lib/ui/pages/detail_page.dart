import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costume_button.dart';
import 'package:flutter/material.dart';

import '../widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img1.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget costumeShadow() {
      return Container(
        height: 234,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 238),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kTransparantColor,
              Colors.black.withOpacity(0.9),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              Container(
                height: 24,
                width: 108,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/emblem.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 250.0),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: kOrangeColor,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    '4.7',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Berada di jalur jalan provinsi yang\nmenghubungkan Denpasar\nSingaraja serta letaknya yang dekat\ndengan Kebun Raya Eka Karya\nmenjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        height: 1.8,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      children: [
                        Photositem(imgurl: 'assets/images/cover1.png'),
                        Photositem(imgurl: 'assets/images/cover2.png'),
                        Photositem(imgurl: 'assets/images/cover3.png'),
                        SizedBox(width: 12.0),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Interests',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      children: [
                        InterestItem(label: 'Kids Park'),
                        SizedBox(height: 8.0),
                        InterestItem(label: 'City Museum'),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Row(
                      children: [
                        InterestItem(label: 'Honor Bridge'),
                        SizedBox(height: 8.0),
                        InterestItem(label: 'Central Mall'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 12.0),
                      Text(
                        'IDR 2.500.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CostumeButton(title: 'BOOK NOW', route: '', width: 170),
                ],
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            image(),
            costumeShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}

class InterestItem extends StatelessWidget {
  const InterestItem({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(
            "assets/icons/check.png",
            width: 16,
            height: 16,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 6.0),
          Text(
            label,
            style: blackTextStyle.copyWith(fontWeight: medium),
          ),
        ],
      ),
    );
  }
}
