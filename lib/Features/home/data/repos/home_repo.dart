import 'package:dartz/dartz.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestBooks();
  Future<Either<Failure, List<BookModel>>> fetchBooksDetials({required String category});
  Future<Either<Failure, List<BookModel>>> fetchSearchBooksDetials({required String search});
}
