import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costume_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget inputTextField({
        required String label,
        required String hint,
        required bool obscure,
      }) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label),
              const SizedBox(height: 6.0),
              TextField(
                cursorColor: kBlackColor,
                obscureText: obscure,
                decoration: InputDecoration(
                  hintText: hint,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            inputTextField(
                label: 'Full Name', hint: 'Your Full Name', obscure: false),
            inputTextField(label: 'Email', hint: 'Email', obscure: false),
            inputTextField(label: 'Password', hint: 'Password', obscure: true),
            inputTextField(label: 'Hobby', hint: 'Hobby', obscure: false),
            const CostumeButton(title: 'Get Started', route: '/main'),
          ],
        ),
      );
    }

    Widget tagButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            text(),
            inputSection(),
            tagButton(),
          ],
        ),
      ),
    );
  }
}
