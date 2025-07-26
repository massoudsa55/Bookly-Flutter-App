import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      final response = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest',
      );
      final books =
          (response['items'] as List)
              .map((item) => BookModel.fromJson(item))
              .toList();
      return Right(books);
    } catch (e) {
      // return Left(ServerFailure());
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final response = await apiService.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );

      final books =
          (response['items'] as List)
              .map((item) => BookModel.fromJson(item))
              .toList();
      return Right(books);
    } catch (e) {
      // return Left(ServerFailure());
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(CacheFailure(e.toString()));
    }
  }
  
}
