import 'package:bookly_flutter_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'best_saller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return CustomLoadingIndicator();
        } else if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,

            itemBuilder: (context, index) {
              final book = state.books[index];
              return GestureDetector(
                onTap:
                    () => context.push(AppRouter.kBookDetailsView, extra: book),
                child: BestSellerListViewItem(book: book),
              );
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          );
        }
        if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        return Center(child: Text('No books available'));
      },
    );
  }
}
