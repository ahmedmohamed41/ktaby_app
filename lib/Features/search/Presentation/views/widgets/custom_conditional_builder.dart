import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/custom_best_seller_item.dart';

class CustomConditionalBuilder extends StatelessWidget {
  const CustomConditionalBuilder({
    super.key,
    required this.list,
  });
  final List<BookModel> list;
  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: true,
      builder: (context) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => CustomBestSellerItem(
          bookmodel: list[index],
        ),
        itemCount: list.length,
      ),
      fallback: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
