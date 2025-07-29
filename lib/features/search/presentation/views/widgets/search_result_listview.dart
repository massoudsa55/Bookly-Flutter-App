import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: GestureDetector(
            onTap: () {
              // Navigate to book details view
              context.push(
                AppRouter.kBookDetailsView,
                extra: {'bookId': index},
              );
            },
            // child: const BestSellerListViewItem(),
          ),
        );
      },
    );
  }
}
