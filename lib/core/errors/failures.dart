import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure(String errorMessage) : super(errorMessage: errorMessage);

  factory ServerFailure.fromDioException(DioException dioexception) {
    switch (dioexception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioexception.response!.statusCode!, dioexception.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      default:
        if (dioexception.message?.contains('SocketException') ?? false) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, please try Again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later');
    } else {
      return ServerFailure('Oops, there was an error, please try again');
    }
  }
}
