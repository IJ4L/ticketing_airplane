import 'package:flutter/material.dart';

class Photositem extends StatelessWidget {
  const Photositem({
    super.key,
    required this.imgurl,
  });

  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Image.asset(
        imgurl,
        width: 70,
        height: 70,
        fit: BoxFit.fill,
      ),
    );
  }
}
