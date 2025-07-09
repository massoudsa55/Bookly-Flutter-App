import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPriceBooks extends StatelessWidget {
  const CustomPriceBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('19.99 €', style: Styles.titleBold20),
        SizedBox(width: 10),
        Text(
          'Free Shipping',
          style: Styles.subtitleRegular14.copyWith(color: Colors.green),
        ),
      ],
    );
  }
}