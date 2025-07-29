import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class CustomBooklyItem extends StatelessWidget {
  const CustomBooklyItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .2,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 214, 151, 128),
            image: DecorationImage(
              // image: AssetImage(AppImages.testImage),
              image: NetworkImage(book.volumeInfo.imageLinks.thumbnail),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
