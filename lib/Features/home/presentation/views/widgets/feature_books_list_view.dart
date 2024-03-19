import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/presentation/manger/featured_newset_cubit/featured_newset_cubit.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:ktaby_app/core/widgets/custom_error.dart';
import 'package:ktaby_app/core/widgets/custom_loading_indicator.dart';


class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedNewsetCubit, FeaturedNewsetState>(
      builder: (context, state) {
        if (state is FeaturedNewsetSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              width: double.infinity,
              height: height,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) =>  CustomListViewItem(
                        width: width,
                        height: 150,
                        navigate: false,
                        urlImagebooks: state.books[index].volumeInfo!
                            .imageLinks?.smallThumbnail??'',
                      ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                  width: 8,
                ),
              ),
            ),
          );
        } else if (state is FeaturedNewsetFailure) {
          return CustomError(errMassage: state.errMassage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}


