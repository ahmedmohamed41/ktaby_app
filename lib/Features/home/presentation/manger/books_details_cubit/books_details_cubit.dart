import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';
import 'package:ktaby_app/Features/home/presentation/manger/featured_newset_cubit/featured_newset_cubit.dart';

part 'books_details_state.dart';

class BooksDetailsCubit extends Cubit<BooksDetailsState> {
  BooksDetailsCubit(this.homeRepo) : super(BooksDetailsInitial());

  static FeaturedNewsetCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchBooksDetails() async {
    emit(BooksDetailsLoading());
    var result = await homeRepo.fetchNewsetSellerBooks();

    result.fold((failure) {
      emit(BooksDetailsFailure(failure.errMessage));
    }, (books) {
      emit(BooksDetailsSuccess(books));
      
    });
  }
}
