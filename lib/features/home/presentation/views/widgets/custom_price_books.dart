import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';

class CustomPriceBooks extends StatelessWidget {
  const CustomPriceBooks({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          book.saleInfo?.listPrice?.amount != null
              ? '\$${book.saleInfo?.listPrice!.amount}'
              : 'Free',
          style: Styles.textStyle20,
        ),
        // SizedBox(width: 10),
        // Text(
        //   'Free Shipping',
        //   style: Styles.textStyle14.copyWith(color: Colors.green),
        // ),
      ],
    );
  }
}
