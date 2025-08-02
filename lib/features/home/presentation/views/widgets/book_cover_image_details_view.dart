import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCoverImage extends StatelessWidget {
  const BookCoverImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenHeight * 0.2,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
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
