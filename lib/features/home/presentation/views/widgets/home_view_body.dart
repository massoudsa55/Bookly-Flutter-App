import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'beast_seller_listview.dart';
import 'custom_appbar.dart';
import 'featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(height: 30),
                Text('Best Seller', style: Styles.textStyle18),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        // using BestSellerListViewItem in ListView.builder
        SliverToBoxAdapter(child: BestSellerListView()),
      ],
    );
  }
}
