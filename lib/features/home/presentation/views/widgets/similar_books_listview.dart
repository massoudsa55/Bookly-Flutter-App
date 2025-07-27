import 'package:flutter/material.dart';

import 'similar_books_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const SimilarBooksItem(),
            ),
        // separatorBuilder: (context, index) => const SizedBox(width: 6.3),
      ),
    );
  }
}
