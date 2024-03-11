import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_best_seller_item.dart';

class FeaturedBestSellerView extends StatelessWidget {
  const FeaturedBestSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 9,
        itemBuilder: (context, index) => const CustomBestSellerItem(),
      ),
    );
  }
}
