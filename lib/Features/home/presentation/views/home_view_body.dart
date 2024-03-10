import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
