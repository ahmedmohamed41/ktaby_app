import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';
import 'package:ktaby_app/Features/home/presentation/manger/featured_newset_cubit/featured_newset_cubit.dart';

part 'best_books_state.dart';

class BestBooksCubit extends Cubit<BestBooksState> {
  BestBooksCubit(this.homeRepo) : super(BestBooksInitial());

  static FeaturedNewsetCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchBestBooks() async {
    emit(BestBooksLoading());
    var result = await homeRepo.fetchBestBooks();

    result.fold((failure) {
      emit(BestBooksFailure(failure.errMessage));
    }, (books) {
      emit(BestBooksSuccess(books));
    });
  }
}
