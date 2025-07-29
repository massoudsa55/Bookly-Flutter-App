import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo_impl.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImpl) : super(NewestBooksLoading());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    try {
      final books = await homeRepoImpl.fetchNewestBooks();
      books.fold(
        (failure) => emit(NewestBooksFailure(failure.message)),
        (books) => emit(NewestBooksSuccess(books)),
      );
    } catch (e) {
      emit(NewestBooksFailure('Failed to load newest books'));
    }
  }
}
