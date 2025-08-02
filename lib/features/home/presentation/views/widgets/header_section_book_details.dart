import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'book_cover_image_details_view.dart';
import 'custom_appbar_details_view.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16.0),
          child: BookCoverImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 18),
        BookTitle(title: bookModel.volumeInfo.title ?? 'The Jungle Book'),
        const SizedBox(height: 10),
        BookAuthor(
          author: bookModel.volumeInfo.authors?[0] ?? 'Rudyard Kipling',
        ),
        const SizedBox(height: 18),
        CustomRatingBook(
          averageRating: bookModel.volumeInfo.averageRating ?? 4.8,
          ratingsCount: bookModel.volumeInfo.ratingsCount ?? 245,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
