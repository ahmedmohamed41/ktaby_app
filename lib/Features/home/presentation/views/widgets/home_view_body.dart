import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/featured_best_seller_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Best Seller',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: FeaturedBestSellerView(),
        ),
      ],
    );
  }
}
