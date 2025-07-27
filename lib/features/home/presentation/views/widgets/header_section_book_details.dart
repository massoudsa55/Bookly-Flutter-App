import 'package:flutter/material.dart';

import 'book_cover_image_details_view.dart';
import 'custom_appbar_details_view.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomBookDetailsAppBar(),
        SizedBox(height: 20),
        BookCoverImage(),
        SizedBox(height: 18),
        BookTitle(),
        SizedBox(height: 10),
        BookAuthor(),
        SizedBox(height: 18),
        CustomRatingBook(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
