import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.textStyle30,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
    );
  }
}
