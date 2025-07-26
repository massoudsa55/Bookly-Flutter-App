import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiService');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiService');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiService');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          error.response?.statusCode ?? 500,
          error.response?.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled by ApiService');
      case DioExceptionType.connectionError:
        if (error.message != null && error.message!.contains('SocketException')) {
          return ServerFailure('No Internet connection');
        }
        break;
      case DioExceptionType.unknown:
        return ServerFailure('Unknown DioException: ${error.message}');
      default:
        return ServerFailure(
          'Oops, something went wrong, please try again later',
        );
    }
    // Ensure a ServerFailure is always returned
    return ServerFailure(
      'Oops, something went wrong, please try again later',
    );
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401) {
      return ServerFailure(response['error']['message'] ?? 'Bad request');
    } else if (statusCode == 404) {
      return ServerFailure('Your request not be found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later');
    } else {
      return ServerFailure(
        'Oops, something went wrong, please try again later',
      );
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}
