import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';
import 'package:ktaby_app/core/errors/failures.dart';
import 'package:ktaby_app/core/utils/api_service.dart';

class HomeRepoImle extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetSellerBooks() async {
    try {
      var data = await ApiService().get(
          endPoints:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksDetials() {

    throw UnimplementedError();
  }
}
