import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/presentation/manger/books_details_cubit/books_details_cubit.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_best_seller_item.dart';
import 'package:ktaby_app/core/widgets/custom_error.dart';
import 'package:ktaby_app/core/widgets/custom_loading_indicator.dart';

class FeaturedBestSellerView extends StatelessWidget {
  const FeaturedBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksDetailsCubit, BooksDetailsState>(
      builder: (context, state) {
        if (state is BooksDetailsSuccess) {
          return SizedBox(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount:state.books.length,
              itemBuilder: (context, index) =>  CustomBestSellerItem(
                books: state.books[index],
              ),
            ),
          );
        } else if (state is BooksDetailsFailure) {
          return CustomError(errMassage: state.errMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
