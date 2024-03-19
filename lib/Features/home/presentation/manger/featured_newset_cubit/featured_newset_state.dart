part of 'featured_newset_cubit.dart';

abstract class FeaturedNewsetState extends Equatable {
  const FeaturedNewsetState();

  @override
  List<Object> get props => [];
}

final class FeaturedNewsetInitial extends FeaturedNewsetState {}

final class FeaturedNewsetLoading extends FeaturedNewsetState {}

final class FeaturedNewsetSuccess extends FeaturedNewsetState {
  final List<BookModel> books;

 const FeaturedNewsetSuccess(this.books);
}

final class FeaturedNewsetFailure extends FeaturedNewsetState {
  final String errMassage;

  const FeaturedNewsetFailure(this.errMassage);
}
final class ShimmerLoading extends FeaturedNewsetState {}
