import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({
    super.key,
    required this.img,
    required this.isSelected,
  });

  final String img;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Image.asset(
          img,
          width: 24.0,
          height: 24.0,
          fit: BoxFit.fill,
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparantColor,
          ),
        )
      ],
    );
  }
}
