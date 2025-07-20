import 'package:flutter/material.dart';

import 'book_cover_image_details_view.dart';
import 'custom_appbar_details_view.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';
import 'shopping_bottons_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 20),
            BookCoverImage(),
            const SizedBox(height: 20),
            BookTitle(),
            const SizedBox(height: 10),
            BookAuthor(),
            const SizedBox(height: 20),
            // CustomRatingBook(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [CustomRatingBook()],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const ShoppingButtonsBookDetails()],
            ),
          ],
        ),
      ),
    );
  }
}
