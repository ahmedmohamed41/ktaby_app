import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo.dart';

part 'featured_newset_state.dart';

class FeaturedNewsetCubit extends Cubit<FeaturedNewsetState> {
  FeaturedNewsetCubit(this.homeRepo) : super(FeaturedNewsetInitial());

  static FeaturedNewsetCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedNewset() async {
    var result = await homeRepo.fetchNewsetSellerBooks();

    result.fold((failure) {
      emit(FeaturedNewsetFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedNewsetSuccess(books));
    });
  }

  bool shemmir = false;
  bool shimmer() {
    shemmir = false;
    emit(ShimmerLoading());
    shemmir = true;
    return shemmir;
  }
}
