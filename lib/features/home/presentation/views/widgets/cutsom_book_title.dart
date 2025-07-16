import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'The Jungle Book',
      style: Styles.textStyle30,
      textAlign: TextAlign.center,
    );
  }
}
