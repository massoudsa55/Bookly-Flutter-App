import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'custom_booktly_item.dart';
import 'custom_price_books.dart';
import 'custom_rating_books.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .14,
            child: CustomBooklyItem(book: book),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .9,
                  child: Text(
                    book.volumeInfo.title ?? 'No Title',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kFontGTSectraFine,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  // book.volumeInfo.authors?.join(', ') ?? 'No Author',
                  book.volumeInfo.authors?[0] ?? 'Unknown Author',
                  style: Styles.textStyle14.copyWith(color: Color(0xffBDBDBD)),
                ),
                SizedBox(height: 3),
                // Price & Rating Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPriceBooks(book: book),
                    CustomRatingBook(
                      averageRating: book.volumeInfo.averageRating ?? 0.0,
                      ratingsCount: book.volumeInfo.ratingsCount ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
