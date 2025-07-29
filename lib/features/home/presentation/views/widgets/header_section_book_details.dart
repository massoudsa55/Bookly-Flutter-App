import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'book_cover_image_details_view.dart';
import 'custom_appbar_details_view.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 20),
        const BookCoverImage(),
        const SizedBox(height: 18),
        const BookTitle(),
        const SizedBox(height: 10),
        const BookAuthor(),
        const SizedBox(height: 18),
        CustomRatingBook(
          book: book,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
