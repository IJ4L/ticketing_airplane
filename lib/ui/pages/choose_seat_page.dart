import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costume_button.dart';
import 'package:flutter/material.dart';

import '../widgets/seat_item.dart';

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

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/seat_avaible.png'),
                ),
              ),
            ),
            Text('Available', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/seat_selected.png'),
                ),
              ),
            ),
            Text('Selected', style: blackTextStyle),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 10, right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/seat_unavabile.png'),
                ),
              ),
            ),
            Text('Unavailable', style: blackTextStyle),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 1),
                  const SeatItem(status: 1),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 2),
                  const SeatItem(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkOutButton() {
      return const CostumeButton(
        title: 'Continue to Checkout',
        route: '/checkout',
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectSeat(), checkOutButton()],
      ),
    );
  }
}
