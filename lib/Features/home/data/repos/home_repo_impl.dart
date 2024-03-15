import 'package:dartz/dartz.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';
import 'package:ktaby_app/core/errors/failures.dart';

class HomeRepoImle extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksDetials() {
    // TODO: implement fetchBooksDetials
    throw UnimplementedError();
  }
  
}