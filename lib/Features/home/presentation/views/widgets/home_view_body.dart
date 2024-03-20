import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/featured_best_seller_view.dart';
import 'package:ktaby_app/core/utils/app_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSearchView);
                },
                widget: Image.asset(
                  'assets/images/logo2.png',
                ),
              ),
              const FeaturedBooksListView(),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: FeaturedBestSellerView(),
        ),
      ],
    );
  }
}
