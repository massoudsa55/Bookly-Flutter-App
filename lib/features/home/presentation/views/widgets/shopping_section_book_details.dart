import 'package:flutter/material.dart';

import 'shopping_bottons_book_details.dart';

class ShoppingSection extends StatelessWidget {
  const ShoppingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ShoppingButtonsBookDetails(),
    );
  }
}