import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(Icons.star, color: Colors.amber, size: 16),
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 16),
        SizedBox(width: 5),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 10),
        Text(
          '(245 reviews)',
          style: Styles.textStyle14.copyWith(color: Color(0xffBDBDBD)),
        ),
      ],
    );
  }
}
