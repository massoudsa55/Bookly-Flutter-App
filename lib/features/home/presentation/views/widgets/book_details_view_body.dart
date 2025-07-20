import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_cover_image_details_view.dart';
import 'custom_appbar_details_view.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';
import 'featured_books_listview.dart';
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
            const SizedBox(height: 18),
            BookTitle(),
            const SizedBox(height: 10),
            BookAuthor(),
            const SizedBox(height: 18),
            CustomRatingBook(mainAxisAlignment: MainAxisAlignment.center),
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const ShoppingButtonsBookDetails(),
            ),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            const FeaturedBooksListView(),
          ],
        ),
      ),
    );
  }
}
