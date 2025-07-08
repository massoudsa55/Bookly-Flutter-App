import 'package:bookly_flutter_app/features/home/presentation/views/widgets/custom_booktly_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Example item count
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomBooklyItem(),
          );
        },
      ),
    );
  }
}
