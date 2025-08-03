import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'shopping_bottons_book_details.dart';

class ShoppingSection extends StatelessWidget {
  const ShoppingSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ShoppingButtonsBookDetails(bookModel: bookModel),
    );
  }
}
