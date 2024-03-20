import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/presentation/manger/book_detatils_cubit/book_details_cubit.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:ktaby_app/core/widgets/custom_error.dart';
import 'package:ktaby_app/core/widgets/custom_loading_indicator.dart';

class SimilarBooksView extends StatelessWidget {
  const SimilarBooksView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksDetailsCubit, BookDetailsState>(
      builder: (context, state) {
        if (state is BooksDetailsSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              width: double.infinity,
              height: 140,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => CustomListViewItem(
                  width: 90,
                  height: 150,
                  navigate: false,
                  bookModel: state.books[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                  width: 8,
                ),
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
