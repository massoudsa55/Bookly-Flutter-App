import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:bookly_flutter_app/features/home/presentation/views/widgets/custom_book_listview_item.dart';
import 'package:flutter/material.dart';

import 'custom_price_books.dart';
import 'custom_rating_books.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(width: 120, height: 180, color: Colors.red),
        CustomBookListViewItem(),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter\n and the Goblet of Fire',
                style: Styles.textStyle18,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(height: 5),
              Text(
                'J.K. Rowling',
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
              SizedBox(height: 5),
              // Price & Rating Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [CustomPriceBooks(), CustomRatingBook()],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
