import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomPriceBooks extends StatelessWidget {
  const CustomPriceBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('19.99 €', style: Styles.textStyle20),
        SizedBox(width: 10),
        Text(
          'Free Shipping',
          style: Styles.textStyle14.copyWith(color: Colors.green),
        ),
      ],
    );
  }
}