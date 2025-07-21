import 'package:flutter/material.dart';

import 'header_section_book_details.dart';
import 'shopping_section_book_details.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            // hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  HeaderSection(),
                  SizedBox(height: 37),
                  ShoppingSection(),
                  Expanded(child: SizedBox(height: 50)),
                  SimilarBooksSection(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
