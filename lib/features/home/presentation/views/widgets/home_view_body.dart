import 'package:bookly_flutter_app/core/utils/styles.dart';
import 'package:bookly_flutter_app/features/home/presentation/views/widgets/best_saller_listview_item.dart';
import 'package:bookly_flutter_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_flutter_app/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 30),
          Text('Best Seller', style: Styles.titleMudium18),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => BestSellerListViewItem(),
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
