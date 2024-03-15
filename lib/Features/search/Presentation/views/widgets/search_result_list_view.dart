import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_best_seller_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const CustomBestSellerItem(),
    );
  }
}
