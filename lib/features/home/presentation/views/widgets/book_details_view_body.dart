import 'package:flutter/material.dart';

import 'book_cover_image_details_view.dart';
import 'custom_appbar.dart';
import 'custom_book_author.dart';
import 'custom_rating_books.dart';
import 'cutsom_book_title.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    BookCoverImage(),
                    const SizedBox(height: 20),
                    BookTitle(),
                    const SizedBox(height: 10),
                    BookAuthor(),
                    const SizedBox(height: 20),
                    const Center(child: CustomRatingBook()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
