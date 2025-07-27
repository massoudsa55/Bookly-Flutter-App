import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    try {
      final books = await homeRepo.fetchFeaturedBooks();
      books.fold(
        (failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => FeaturedBooksSuccess(books),
      );
    } catch (e) {
      emit(FeaturedBooksFailure('Failed to load featured books'));
    }
  }
}
