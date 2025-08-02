import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          fit: BoxFit.cover,
          // placeholder:
          //     (context, url) =>
          //         const Center(child: CircularProgressIndicator()),
          errorWidget:
              (context, url, error) => const Icon(
                Icons.error_outline,
                size: 50.0,
                color: Colors.red,
              ),
        ),
      ),
    );
  }
}
