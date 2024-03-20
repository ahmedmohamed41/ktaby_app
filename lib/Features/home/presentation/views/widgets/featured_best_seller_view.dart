import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/presentation/manger/best_books_cubit/best_books_cubit.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_best_seller_item.dart';
import 'package:ktaby_app/core/widgets/custom_error.dart';
import 'package:ktaby_app/core/widgets/custom_loading_indicator.dart';

class FeaturedBestSellerView extends StatelessWidget {
  const FeaturedBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestBooksCubit, BestBooksState>(
      builder: (context, state) {
        if (state is BestBooksSuccess) {
          return SizedBox(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              itemBuilder: (context, index) => CustomBestSellerItem(
                bookmodel: state.books[index],
              ),
            ),
          );
        } else if (state is BestBooksFailure) {
          return CustomError(errMassage: state.errMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
