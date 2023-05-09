import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final String title, subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/check.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(title, style: blackTextStyle),
          const Spacer(),
          Text(
            subtitle,
            style: blackTextStyle.copyWith(fontWeight: semiBold, color: color),
          )
        ],
      ),
    );
  }
}
