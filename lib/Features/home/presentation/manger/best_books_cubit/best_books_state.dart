part of 'best_books_cubit.dart';

sealed class BestBooksState extends Equatable {
  const BestBooksState();

  @override
  List<Object> get props => [];
}

final class BestBooksInitial extends BestBooksState {}

final class BestBooksLoading extends BestBooksState {}

final class BestBooksSuccess extends BestBooksState {
  final List<BookModel> books;

  const BestBooksSuccess(this.books);
}

final class BestBooksFailure extends BestBooksState {
  final String errMassage;

  const BestBooksFailure(this.errMassage);
}
