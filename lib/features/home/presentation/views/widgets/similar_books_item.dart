import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 214, 151, 128),
          image: const DecorationImage(
            image: AssetImage(AppImages.testSimilarBook),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
