import 'package:bookly_flutter_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_flutter_app/features/home/presentation/views/widgets/custom_booktly_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [CustomAppBar(), CustomBooklyItem()],
    );
  }
}
