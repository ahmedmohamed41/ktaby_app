part of 'book_details_cubit.dart';

sealed class BookDetailsState extends Equatable {
  const BookDetailsState();

  @override
  List<Object> get props => [];
}

final class BookDetailsInitial extends BookDetailsState {}
final class BooksDetailsLoading extends BookDetailsState {}

final class BooksDetailsSuccess extends BookDetailsState {
  final List<BookModel> books;

  const BooksDetailsSuccess(this.books);
}

final class BooksDetailsFailure extends BookDetailsState {
  final String errMassage;

  const BooksDetailsFailure(this.errMassage);
}