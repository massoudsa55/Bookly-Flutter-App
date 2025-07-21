import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_cover_image_details_view.dart';
import 'custom_appbar_details_view.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';
import 'shopping_bottons_book_details.dart';
import 'similar_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 20),
            const BookCoverImage(),
            const SizedBox(height: 18),
            const BookTitle(),
            const SizedBox(height: 10),
            const BookAuthor(),
            const SizedBox(height: 18),
            CustomRatingBook(mainAxisAlignment: MainAxisAlignment.center),
            const SizedBox(height: 37),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ShoppingButtonsBookDetails(),
            ),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),
            const SimilarBooksListView(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
