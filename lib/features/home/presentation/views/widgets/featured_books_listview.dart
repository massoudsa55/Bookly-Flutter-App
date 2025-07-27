import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/featured_books/featured_books_cubit.dart';
import 'custom_booktly_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        print(state);
        switch (state.runtimeType) {
          case const (FeaturedBooksLoading):
            return Center(child: CircularProgressIndicator());
          case const (FeaturedBooksFailure):
            return Center(
              child: Text((state as FeaturedBooksFailure).errMessage),
            );
          case const (FeaturedBooksSuccess):
            return SizedBox(
              height: MediaQuery.sizeOf(context).height * .2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: (state as FeaturedBooksSuccess).books.length,
                itemBuilder: (context, index) {
                  final book = (state).books[index];
                  return CustomBooklyItem(book: book);
                },
              ),
            );
        }
        return Center(child: Text('No featured books available'));
      },
    );
  }
}
