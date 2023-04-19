import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({super.key});

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
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              separatorBuilder: (_, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) => Container(
                height: 90,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/cover${index + 1}.png",
                      width: 70,
                      height: 70,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                    const Spacer(),
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
            ),
          ),
        ],
      ),
    );
  }
}
