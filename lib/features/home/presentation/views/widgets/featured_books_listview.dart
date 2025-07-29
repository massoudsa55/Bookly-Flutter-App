import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../manager/featured_books/featured_books_cubit.dart';
import 'custom_booktly_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        switch (state.runtimeType) {
          case const (FeaturedBooksLoading):
            return const CustomLoadingIndicator();
          case const (FeaturedBooksSuccess):
            return SizedBox(
              height: MediaQuery.sizeOf(context).height * .2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: (state as FeaturedBooksSuccess).books.length,

                itemBuilder: (context, index) {
                  final book = (state).books[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomBooklyItem(book: book),
                  );
                },

                physics: const BouncingScrollPhysics(),
              ),
            );
          case const (FeaturedBooksFailure):
            return CustomErrorWidget(
              errMessage: (state as FeaturedBooksFailure).errMessage,
            );
        }
        return Center(child: Text('No featured books available'));
      },
    );
  }
}
