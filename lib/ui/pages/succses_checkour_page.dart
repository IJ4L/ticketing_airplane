import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costume_button.dart';
import 'package:flutter/material.dart';

class SucssesCheckout extends StatelessWidget {
  const SucssesCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget iconSuccses() {
      return Container(
        height: 150,
        width: 400,
        margin: const EdgeInsets.only(top: 212),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/scheduling.png'),
          ),
        ),
      );
    }

    Widget textSuccses() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50.0),
            const CostumeButton(title: 'My Bookings', route: '/main')
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          iconSuccses(),
          textSuccses(),
        ],
      ),
    );
  }
}
