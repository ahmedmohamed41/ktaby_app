import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_books_details_item.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_details_appbar.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:ktaby_app/core/utils/style.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomDetailsAppbar(),
          const CustomBooksDetailsItem(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, bottom: 10),
              child: Text(
                'You can also like',
                style: Styles.textStyle14
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          const FeaturedBooksListView(
            height: 140,
            width: 90,
          ),
        ],
      ),
    );
  }
}
