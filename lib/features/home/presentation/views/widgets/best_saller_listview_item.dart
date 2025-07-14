import 'package:bookly_flutter_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_listview_item.dart';
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
        SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .9,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kFontGTSectraFine,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'J.K. Rowling',
                style: Styles.textStyle14.copyWith(color: Color(0xffBDBDBD)),
              ),
              SizedBox(height: 3),
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
