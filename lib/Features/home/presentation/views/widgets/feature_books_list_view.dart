import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key, required this.height,
  });
final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) => const CustomListViewItem(
            width: 100,
            height: 150,
            navigate: false,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
            width: 8,
          ),
        ),
      ),
    );
  }
}
