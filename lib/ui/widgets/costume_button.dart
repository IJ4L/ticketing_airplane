import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({
    super.key,
    required this.title,
    required this.route,
  });

  final String title, route;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, route),
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
