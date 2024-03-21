part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}
final class SearchBooksLoading extends SearchState {}

final class SearchBooksSuccess extends SearchState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}

final class SearchBooksFailure extends SearchState {
  final String errMassage;

  const SearchBooksFailure(this.errMassage);
}
