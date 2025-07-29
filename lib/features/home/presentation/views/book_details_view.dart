import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, this.book});
  final BookModel? book;
  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(book: book!);
  }
}
