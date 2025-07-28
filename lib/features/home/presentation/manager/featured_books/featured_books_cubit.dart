import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo_impl.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl) : super(FeaturedBooksLoading());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    // print('Fetching featured books...');
    try {
      final books = await homeRepoImpl.fetchFeaturedBooks();
      print('Featured books fetched: ${books.length}');
      books.fold(
        (failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)),
      );
    } catch (e) {
      emit(FeaturedBooksFailure('Failed to load featured books'));
    }
  }
}
