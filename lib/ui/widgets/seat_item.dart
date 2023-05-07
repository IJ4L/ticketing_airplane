import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({
    super.key,
    required this.status,
  });

  final int status;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    Color bordeColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    text() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        border: Border.all(color: bordeColor(), width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: text(),
    );
  }
}
