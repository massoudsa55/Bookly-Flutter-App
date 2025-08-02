import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../manager/similar_books/similar_books_cubit.dart';
import 'similar_books_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        final isLoading = state is SimilarBooksLoading;
        Widget content;
        if (state is SimilarBooksSuccess) {
          final books = state.books;
          content = SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: books.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: SimilarBooksItem(book: books[index]),
                  ),
              // separatorBuilder: (context, index) => const SizedBox(width: 6.3),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          content = SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: SimilarBooksItem(book: BookModel.placeholder()),
                  ),
              // separatorBuilder: (context, index) => const SizedBox(width: 6.3),
            ),
          );
        }
        return Skeletonizer(enabled: isLoading, child: content);
      },
    );
  }
}
