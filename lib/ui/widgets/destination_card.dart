import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class Destinationcard extends StatelessWidget {
  const Destinationcard({super.key});

  @override
  Widget build(BuildContext context) {
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
      margin: const EdgeInsets.only(top: 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
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
        separatorBuilder: (_, index) => const SizedBox(width: 12),
        itemCount: 5,
      ),
    );
  }
}
