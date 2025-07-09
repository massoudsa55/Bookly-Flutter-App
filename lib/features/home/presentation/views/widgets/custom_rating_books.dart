import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: 16),
        SizedBox(width: 5),
        Text('4.5', style: Styles.subtitleRegular16),
        SizedBox(width: 10),
        Text(
          '(200 reviews)',
          style: Styles.subtitleRegular14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
