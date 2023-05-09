import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/booking_detail.dart';
import 'package:airplane/ui/widgets/costume_button.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/onway.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLS',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/cover1.png",
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
                      'DengTata',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Makassar',
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
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            BookingDetails(
              title: 'Traveler',
              subtitle: '2 Person',
              color: kBlackColor,
            ),
            BookingDetails(
              title: 'Seat',
              subtitle: 'A3, B3',
              color: kBlackColor,
            ),
            BookingDetails(
              title: 'Insurance',
              subtitle: 'YES',
              color: kGreenColor,
            ),
            BookingDetails(
              title: 'Refundable',
              subtitle: 'NO',
              color: kRedColor,
            ),
            BookingDetails(
              title: 'Fat',
              subtitle: '45%',
              color: kBlackColor,
            ),
            BookingDetails(
              title: 'Price',
              subtitle: 'IDR 8.500.690',
              color: kBlackColor,
            ),
            BookingDetails(
              title: 'Grand Total',
              subtitle: 'IDR 12.000.000',
              color: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payments Detail',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/card.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icons/airplane.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 80.400.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          'Current Balance',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget playButton() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            const CostumeButton(
              title: 'Play Now',
              route: '/succses-checkout',
              width: double.infinity,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Terms and Conditions',
                style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          route(),
          bookingDetails(),
          paymentDetails(),
          playButton(),
        ],
      ),
    );
  }
}
