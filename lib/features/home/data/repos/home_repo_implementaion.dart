import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/core/utils/api_services.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementaion implements HomeRepo {
  final ApiService? apiService;

  HomeRepoImplementaion({this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks() async {
    try {
      var data = await apiService!.get(
        endPoint: 'volumes?q=science&filter=ebooks',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService!
          .get(endPoint: 'volumes?q=programming&filter=ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBox({required String category}) async {
    try {
      var data = await apiService!
          .get(endPoint: 'volumes?q=programming&filter=ebooks&Sorting=relevance');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
    throw UnimplementedError();
  }
}
