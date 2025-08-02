import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo_impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksLoading());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    try {
      final books = await homeRepoImpl.fetchSimilarBooks(category: category);
      books.fold(
        (failure) => emit(SimilarBooksFailure(failure.message)),
        (books) => emit(SimilarBooksSuccess(books)),
      );
    } catch (e) {
      emit(SimilarBooksFailure('Failed to load similar books'));
    }
  }
}
