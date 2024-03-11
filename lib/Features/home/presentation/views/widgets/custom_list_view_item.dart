import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/books_detials_view.dart';
import 'package:ktaby_app/constants.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context,const BooksDetailsView());
      },
      child: Container(
        width: 120,
        height: 150,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/image25454.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}