import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text(
            'Select Your\nFavorite Seat',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
        ],
      ),
    );
  }
}
