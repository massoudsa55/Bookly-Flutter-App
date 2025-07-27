import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookCoverImage extends StatelessWidget {
  const BookCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenHeight * 0.2,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(AppImages.testBookDetailsImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
