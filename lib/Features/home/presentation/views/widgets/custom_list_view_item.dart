import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ktaby_app/core/utils/app_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.width,
    required this.height,
    required this.navigate,
    required this.urlImagebooks,
  });
  final double width;
  final double height;
  final bool navigate;
  final String urlImagebooks;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navigate == false) {
          GoRouter.of(context).push(AppRouter.kBooksDetailsView);
        }
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: NetworkImage(
                urlImagebooks
                //  'assets/images/image25454.png',
                ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
