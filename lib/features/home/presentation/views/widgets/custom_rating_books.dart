import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/models/book_model/book_model.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.book,
  });
  final MainAxisAlignment mainAxisAlignment;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        // Icon(Icons.star, color: Colors.amber, size: 16),
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 14),
        SizedBox(width: 6.3),
        Text(
          book.volumeInfo.averageRating?.toStringAsFixed(1) ?? '0.0',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 6.3),
        Opacity(
          opacity: 0.7,
          child: Text(
            '(${book.volumeInfo.ratingsCount?.toInt() ?? 0} reviews)',
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
