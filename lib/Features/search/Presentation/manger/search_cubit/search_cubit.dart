import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  static SearchCubit get(context) => BlocProvider.of(context);

  List<BookModel> searchList = [];
  final HomeRepo homeRepo;

  Future<void> fetchSearchBooks({required String search}) async {
   emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooksDetials(search: search);

    result.fold((failure) {
       emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
      searchList = books;
       emit(SearchBooksSuccess(books));
    });
  }
}
