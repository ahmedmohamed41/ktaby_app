import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';

part 'book_details_state.dart';

class BooksDetailsCubit extends Cubit<BookDetailsState> {
  BooksDetailsCubit(this.homeRepo) : super(BookDetailsInitial());
  static BooksDetailsCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchBooksDetails({required String category}) async {
    emit(BooksDetailsLoading());
    var result = await homeRepo.fetchBooksDetials(category:category);

    result.fold((failure) {
      emit(BooksDetailsFailure(failure.errMessage));
    }, (books) {
      emit(BooksDetailsSuccess(books));
    });
  }
}
