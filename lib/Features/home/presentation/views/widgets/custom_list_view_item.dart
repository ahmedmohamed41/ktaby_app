import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/core/utils/app_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.width,
    required this.height,
    required this.navigate,
    required this.bookModel,
  });
  final double width;
  final double height;
  final bool navigate;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navigate == false) {
          GoRouter.of(context).push(AppRouter.kBooksDetailsView,extra: bookModel);
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 2.6/4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel.volumeInfo!
                            .imageLinks?.smallThumbnail??'',
           errorWidget: (context, url, error) =>const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
