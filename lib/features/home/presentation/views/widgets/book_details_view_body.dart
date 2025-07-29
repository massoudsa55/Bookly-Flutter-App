import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'header_section_book_details.dart';
import 'shopping_section_book_details.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;

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
                children: [
                  HeaderSection(book: book),
                 const  SizedBox(height: 37),
                 const  ShoppingSection(),
                 const  Expanded(child: SizedBox(height: 50)),
                 const  SimilarBooksSection(),
                 const  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
